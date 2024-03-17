//
//  RoundButton.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

struct RoundButtonSymbol: View {
    var symbol: String
    var action: () -> Void

    @ViewBuilder
    var buttonLabel: some View {
        VStack(alignment: .center) {
            Text(symbol)
                .font(.system(size: 50, weight: .bold))
                .foregroundStyle(.white)
        }
        .padding(10)
        /** we set the frame
         to infinty in order for our round button
         view to adapt based on the available space
         */
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .center)
        .background {
            Circle()
                .foregroundStyle(.blue)
                .shadow(radius: 10)
        }
        .padding(7)
    }

    var body: some View {
        Button {
            action()
        } label: {
            buttonLabel
        }
    }
}
#Preview("Round Button Symbol") {
    RoundButtonSymbol(symbol: "+",
                      action: { print("button is pressed") })
        .frame(width: 90, height: 90)
}
