//
//  Keypad.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI
import Foundation

struct Keypad: View {
    @EnvironmentObject var viewModel: CalculatorViewModel

    var body: some View {

        VStack(spacing: 0) {
            Spacer()
            // 1st row
            HStack(spacing: 0) {
                // AC Button
                RoundButtonAC(symbol: "AC") {
                    viewModel.acButtonAction()
                }
                // DE Button
                RoundButtonAC(symbol: "DE") {
                    viewModel.deButtonAction()
                }
                // Percentage Button
                RoundButtonAC(symbol: "%") {
                    viewModel.operatorButtonAction(symbol: "%")
                }
                // Divide Operator
                RoundButtonSymbol(symbol: "÷") {
                    viewModel.operatorButtonAction(symbol: "/")
                }
            }
            // 2nd row
            HStack(spacing: 0) {
                // 7 number button
                RoundButtonNumber(symbol: "7") {
                    viewModel.numberButtonAction(number: "7")
                }
                // 8 number button
                RoundButtonNumber(symbol: "8") {
                    viewModel.numberButtonAction(number: "8")
                }
                // 9 number button
                RoundButtonNumber(symbol: "9") {
                    viewModel.numberButtonAction(number: "9")
                }
                // Multiply Operator
                RoundButtonSymbol(symbol: "x") {
                    viewModel.operatorButtonAction(symbol: "*")
                }
            }
            // 3d row
            HStack(spacing: 0) {
                // 4 number button
                RoundButtonNumber(symbol: "4") {
                    viewModel.numberButtonAction(number: "4")
                }
                // 5 number button
                RoundButtonNumber(symbol: "5") {
                    viewModel.numberButtonAction(number: "5")
                }
                // 6 number button
                RoundButtonNumber(symbol: "6") {
                    viewModel.numberButtonAction(number: "6")
                }
                // Substraction Operator
                RoundButtonSymbol(symbol: "-") {
                    viewModel.operatorButtonAction(symbol: "-")
                }
            }
            // 4th row
            HStack(spacing: 0) {
                // 1 number button
                RoundButtonNumber(symbol: "1") {
                    viewModel.numberButtonAction(number: "1")
                }
                // 2 number button
                RoundButtonNumber(symbol: "2") {
                    viewModel.numberButtonAction(number: "2")
                }
                // 3 number button
                RoundButtonNumber(symbol: "3") {
                    viewModel.numberButtonAction(number: "3")
                }
                // Addition Operator
                RoundButtonSymbol(symbol: "+") {
                    viewModel.operatorButtonAction(symbol: "+")
                }
            }
            // 5th row
            HStack(spacing: 0) {
                // 0 number button
                RoundButtonZero(symbol: "0",
                                action: {
                    viewModel.numberButtonAction(number: "0") })
                .layoutPriority(1)
                // , comma button
                RoundButtonSymbol(symbol: ",") {
                    viewModel.operatorButtonAction(symbol: ".")
                }
                // Calc button
                RoundButtonSymbol(symbol: "=") {
                    viewModel.calcButtonAction()
                }
            }
        }
    }
}

struct Keypad_Previews: PreviewProvider {
    static var previews: some View {
        Keypad().environmentObject(CalculatorViewModel())
    }
}
