//
//  RoundButtonZero.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI

struct RoundButtonZero: View {
    var symbol: String
    var action: () -> Void

    @ViewBuilder
    var buttonLabel: some View {
        VStack(alignment: .center) {
            Text(symbol)
                .font(.system(size: 35, weight: .bold))        .foregroundStyle(.white)
        }
        .padding(10)
        .frame(maxWidth: 165,
               maxHeight: 75,
               alignment: .center)
        .background {
            /** style should be circular
             snapshot testing have some incosistencies regarding
             .continues style in SwiftUI creating uneven lines
             */
            RoundedRectangle(cornerRadius: 50, style: .circular)
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

#Preview(" Roudned Zero Button") {
    RoundButtonZero(symbol: "0",
                    action: { print("Button pressed") })
}
