//
//  Keypad.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI
import Foundation

struct Keypad: View {
    @EnvironmentObject var viewModel : CalculatorViewModel

    var body: some View {

        VStack(spacing: 0){
            Spacer()
            //1sr row
            HStack(spacing: 0){
                Button{
                    viewModel.calc.inp="0"
                    viewModel.calc.combination="0"
                    viewModel.calc.result="0"
                }
            label:{
                RoundButtonAC(symbol: "AC")}
                Button{
                    if(viewModel.calc.combination.count==1){
                        viewModel.calc.combination="0"

                    }else{
                        viewModel.calc.combination.removeLast()

                    }

                }
            label:{
                RoundButtonAC(symbol: "DE")}
                Button{if(viewModel.calc.combination.last == "+" || viewModel.calc.combination.last == "-" ||
                          viewModel.calc.combination.last == "*" ||
                          viewModel.calc.combination.last == "/" ||
                          viewModel.calc.combination.last == "."
                )
                    {viewModel.calc.combination.removeLast()
                    viewModel.calc.combination+="/100"

                }else{
                    viewModel.calc.combination+="/100"
                }
                }
            label: {
                RoundButtonAC(symbol: "%")}
                Button { if(viewModel.calc.combination.last == "+" || viewModel.calc.combination.last == "-" ||
                            viewModel.calc.combination.last == "*" ||
                            viewModel.calc.combination.last == "/" ||
                            viewModel.calc.combination.last == "."
                )
                    { viewModel.calc.combination.removeLast()
                    viewModel.calc.combination+="/"

                } else {
                    viewModel.calc.combination+="/"
                }}
            label: {
                RoundButtonSymbol(symbol: "÷")}
            }
            // 2nd row
            HStack (spacing: 0) {
                Button {
                    viewModel.calc.inp.append("7")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="7"
                    } else { viewModel.calc.combination+="7"}

                }
            label: {
                RoundButtonNumber(symbol: "7")}
                Button {
                    viewModel.calc.inp.append("8")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="8"
                    } else { viewModel.calc.combination+="8"}
                }
            label: {
                RoundButtonNumber(symbol: "8")}
                Button{viewModel.calc.inp.append("9")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="9"
                    }else{viewModel.calc.combination+="9"}}
            label: {
                RoundButtonNumber(symbol: "9")}
                Button{if(viewModel.calc.combination.last == "+" || viewModel.calc.combination.last == "-" ||
                          viewModel.calc.combination.last == "*" ||
                          viewModel.calc.combination.last == "/" ||
                          viewModel.calc.combination.last == "."
                )
                    { viewModel.calc.combination.removeLast()
                    viewModel.calc.combination+="*"
                } else {
                    viewModel.calc.combination+="*"
                }}
            label:{
                RoundButtonSymbol(symbol: "×")}
            }
            //3d row
            HStack(spacing: 0) {
                Button{ viewModel.calc.inp.append("4")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="4"
                    } else { viewModel.calc.combination+="4"}}
            label: {
                RoundButtonNumber(symbol: "4")}
                Button{ viewModel.calc.inp.append("5")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="5"
                    } else { viewModel.calc.combination+="5"}}
            label:{
                RoundButtonNumber(symbol: "5")}
                Button { viewModel.calc.inp.append("6")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="6"
                    } else { viewModel.calc.combination+="6"}}
            label: {
                RoundButtonNumber(symbol: "6")}
                Button{if(viewModel.calc.combination.last == "+" || viewModel.calc.combination.last == "-" ||
                          viewModel.calc.combination.last == "*" ||
                          viewModel.calc.combination.last == "/" ||
                          viewModel.calc.combination.last == "."
                )
                    { viewModel.calc.combination.removeLast()
                    viewModel.calc.combination+="-"
                } else {
                    viewModel.calc.combination+="-"
                }}
            label: {
                RoundButtonSymbol(symbol: "-")}
            }
            // 4th row
            HStack(spacing: 0){
                Button{viewModel.calc.inp.append("1")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="1"
                    }else{viewModel.calc.combination+="1"}}
            label:{
                RoundButtonNumber(symbol: "1")}
                Button{viewModel.calc.inp.append("2")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="2"
                    }else{viewModel.calc.combination+="2"}}
            label:{
                RoundButtonNumber(symbol: "2")}
                Button{viewModel.calc.inp.append("3")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="3"
                    }else{viewModel.calc.combination+="3"}}
            label:{
                RoundButtonNumber(symbol: "3")}
                Button{if(viewModel.calc.combination.last == "+" || viewModel.calc.combination.last == "-" ||
                          viewModel.calc.combination.last == "*" ||
                          viewModel.calc.combination.last == "/" ||
                          viewModel.calc.combination.last == "."
                )
                    {viewModel.calc.combination.removeLast()
                    viewModel.calc.combination+="+"

                }else{
                    viewModel.calc.combination+="+"
                }}
            label:{
                RoundButtonSymbol(symbol: "+")}
            }
            // 5th row
            HStack(spacing: 0){
                Button{viewModel.calc.inp.append("0")
                    if(viewModel.calc.combination.elementsEqual("0")){
                        viewModel.calc.combination="0"
                    }else if (viewModel.calc.combination.last=="/"){
                    }
                    else{viewModel.calc.combination+="0"}}
            label:{
                RoundButtonZero(symbol: "0")}
                Button{if(viewModel.calc.combination.last == "+" || viewModel.calc.combination.last == "-" ||
                          viewModel.calc.combination.last == "*" ||
                          viewModel.calc.combination.last == "/" ||
                          viewModel.calc.combination.last == "."
                )
                    { viewModel.calc.combination.removeLast()
                    viewModel.calc.combination+="."

                } else {
                    viewModel.calc.combination+="."
                }}
            label: {
                RoundButtonNumber(symbol: ",")}
                Button {
                    let expression = NSExpression(format: viewModel.calc.combination)
                    if let result = expression.expressionValue(with: nil, context: nil) as? Double {

                        viewModel.calc.result = String(result)
                    } else {
                        print("Invalid equation")
                    }
                }
            label: {
                RoundButtonSymbol(symbol: "=")}
            }
        }
    }
}

struct Keypad_Previews: PreviewProvider {
    static var previews: some View {
        Keypad().environmentObject(CalculatorViewModel())
    }
}
