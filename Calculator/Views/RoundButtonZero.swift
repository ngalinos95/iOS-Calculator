//
//  RoundButtonZero.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI

struct RoundButtonZero: View {
    var symbol: String = ""

    var body: some View {
        Text(symbol)
            .font(.system(size: 50, weight: .bold))        .foregroundColor(.white)
            .frame(maxWidth: 160, maxHeight: 75)
            .background(Color.init(white: 0.25))
            .clipShape(RoundedRectangle(cornerRadius: 50))
            .shadow(radius: 10)
    }
}

struct RoundButtonZero_Previews: PreviewProvider {
    static var previews: some View {
        RoundButtonZero()
    }
}
