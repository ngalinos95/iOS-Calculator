//
//  RoundButtonNumber.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI

struct RoundButtonNumber: View {
    var symbol: String
    var action: () -> Void
    @ViewBuilder
    var buttonLabel: some View {
        VStack(alignment: .center) {
            Text(symbol)
                .font(.system(size: 40, weight: .bold))        .foregroundStyle(.white)
        }
        .padding(10)
        /** we set the frame
         to infinty in order for our round button
         view to adopt based on the available space
         */
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .center)
        .background {
            Circle()
                .foregroundStyle(Color.init(white: 0.25))
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

#Preview("Round Button Number") {
    RoundButtonNumber(symbol: "2",
                      action: { print("button is Pressed") })
        .frame(width: 90, height: 90)
}
