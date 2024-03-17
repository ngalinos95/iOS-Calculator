//
//  RoundButton.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

struct RoundButtonSymbol: View {
    var symbol: String = ""

    var body: some View {
        Text(symbol)
            .font(.system(size: 50, weight: .bold))        .foregroundColor(.white)
            .frame(maxWidth: 75, maxHeight: 75)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 50))
            .shadow(radius: 10)
    }
}
struct RoundButtonSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RoundButtonSymbol()
    }
}
