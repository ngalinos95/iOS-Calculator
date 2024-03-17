//
//  Result.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI

struct Result: View {
    @EnvironmentObject var viewModel: CalculatorViewModel

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Spacer()
                if viewModel.calc.result == "0" {
                    Text("0")
                        .foregroundColor(Color.black)
                        .font(.system(size: 55))
                } else {
                    Text("\(viewModel.calc.result)")
                        .foregroundColor(Color.black)
                        .font(.system(size: 55))
                }
            }
        }
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result().environmentObject(CalculatorViewModel())
    }
}
