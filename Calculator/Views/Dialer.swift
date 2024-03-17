//
//  Dialer.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI

struct Dialer: View {
    @EnvironmentObject var data : CalculatorViewModel

    var body: some View {
        ScrollView(.horizontal){
            HStack{
                
                Spacer()
                Text(data.calc.combination)
                    .foregroundColor(Color.black)
                    .font(.system(size: 55))
                
                
                
            }
        }
    }
}

struct Dialer_Previews: PreviewProvider {
    static var previews: some View {
        Dialer().environmentObject(CalculatorViewModel())
    }
}
