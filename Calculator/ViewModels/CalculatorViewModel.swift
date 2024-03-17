//
//  Data.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import Foundation
class CalculatorViewModel : ObservableObject {
    @Published var calc = Dial()

    // MARK: Keypad Actions

    /** AC Button Action ,
         resets the Published variable
     */
    func acButtonAction() {
        self.calc = Dial()
    }
    /** DE Button Action ,
     deletes tthe last number of the combined calculation
     or resets to 0 if it ihas only 1 count
     */
    func deButtonAction() {
        if calc.combination.count == 1 {
            calc.combination = "0"
        } else {
            calc.combination.removeLast()
        }
    }
    /** Divide Button Action ,
     divides the current combination with the /100 (percentage)
     */
    func percentageButtonAction() {
        guard let lastOperator = calc.combination.last else {
            calc.combination = "1/100"
            return
        }
        switch lastOperator {
            case "+", "-", "*", "/", ".":
                calc.combination.removeLast()
                calc.combination += "/100"
            default:
                calc.combination += "/100"
        }
    }

    /** Divide Button Action ,
     adds to  the current combination the divide  operator ÷
     */
    func divideButtonAction() {
        guard let lastOperator = calc.combination.last else {
            return
        }
        switch lastOperator {
            case "+", "-", "*", "/", ".":
                calc.combination.removeLast()
                calc.combination += "/"
            default:
                calc.combination += "/"
        }
    }
}





struct Dial : Identifiable {
    var id = UUID()
    var inp : String = "0"
    var combination : String = "0"
    var result : String = "0"
}
