//
//  RoundButtonZero.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI

struct RoundButtonZero: View {
    var symbol: String
    var body: some View {
        VStack(alignment: .center) {
            Text(symbol)
                .font(.system(size: 50, weight: .bold))        .foregroundStyle(.white)
        }
        .padding(10)
        .frame(width: 175,
               height: 75,
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
}

#Preview(" Roudned Zero Button") {
    RoundButtonZero(symbol: "0")
}

