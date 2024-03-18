//
//  RoundButtonAC.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI

struct RoundButtonAC: View {
    var symbol: String
    var action: () -> Void

    @ViewBuilder
    var buttonLabel: some View {
        VStack(alignment: .center) {
            Text(symbol)
                .font(.system(size: 35, weight: .bold))
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
                .foregroundStyle(Color.init(white: 0.6))
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

#Preview {
    RoundButtonAC(symbol: "AC",
                  action: { print("button is pressed") })
        .frame(width: 100, height: 100)
}
