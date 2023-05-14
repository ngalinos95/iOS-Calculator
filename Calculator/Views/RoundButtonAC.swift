//
//  RoundButtonAC.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI

struct RoundButtonAC: View {
    var symbol : String = ""
    var body: some View {
        Text(symbol)
            .font(.system(size: 40 , weight: .bold))        .foregroundColor(.white)
        .frame(maxWidth: 75, maxHeight: 75)
        .background(Color.init(white: 0.6))
        .clipShape(RoundedRectangle(cornerRadius: 50))
        
    }
}

struct RoundButtonAC_Previews: PreviewProvider {
    static var previews: some View {
        RoundButtonAC()
    }
}
