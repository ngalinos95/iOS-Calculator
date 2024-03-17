//
//  Data.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import Foundation
class CalculatorViewModel: ObservableObject {
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
            calc.calculatedCombination = "0"
        } else {
            calc.combination.removeLast()
            calc.calculatedCombination.removeLast()
        }
    }

    /** Remove  last  operator ,
     check of the last operator need to be replaced
     */
    func removeLastOperatorIfNeeded() {
        guard let lastOperator = calc.combination.last else {
            return
        }
        switch lastOperator {
        case "+", "-", "x", ",":
            calc.combination.removeLast()
            calc.calculatedCombination.removeLast()
        case "÷":
            calc.combination.removeLast()
            calc.calculatedCombination.removeLast(3)
        case "%":
            calc.combination.removeLast()
            calc.calculatedCombination.removeLast(6)
        default:
            return
        }
    }
    /** Operator Button Action ,
     adds to  the current combination the  given  operator ÷
     */
    func operatorButtonAction(symbol: String) {
        switch symbol {
        case "+", "-":
            removeLastOperatorIfNeeded()
            calc.combination += symbol
            calc.calculatedCombination += symbol
        case "*":
            removeLastOperatorIfNeeded()
            calc.combination += "x"
            calc.calculatedCombination += "*"
        case "/":
            removeLastOperatorIfNeeded()
            calc.combination += "÷"
            calc.calculatedCombination += ".0/"
        case ".":
            removeLastOperatorIfNeeded()
            calc.combination += ","
            calc.calculatedCombination += "."
        case "%":
            removeLastOperatorIfNeeded()
            calc.combination += "%"
            calc.calculatedCombination += ".0/100"
        default:
            return
        }
    }
    /** Number Button Action ,
     adds to  the current combination the given number input
     */
    func numberButtonAction(number: String) {
        if calc.combination.elementsEqual("0") {
            calc.combination = number
            calc.calculatedCombination = number
        } else if calc.combination.last == "÷" && number == "0" {
            return
        } else {
            calc.combination += number
            calc.calculatedCombination += number
        }
    }

    /** Calc Button Action ,
     Calculates the result
     */
    func calcButtonAction() {
        guard let lastOperator = calc.combination.last else {
            return
        }
        switch lastOperator {
        case "+", "-", "*", "/", ".":
            return
        default:
            let expression = NSExpression(format: calc.calculatedCombination)
            if let result = expression.expressionValue(with: nil,
                                                       context: nil) as? Double {
                calc.result = String(result)
            } else {
                print("Invalid equation")
            }
        }
    }
}

struct Dial {
    var combination: String = "0"
    var calculatedCombination: String = "0"
    var result: String = "0"
}
