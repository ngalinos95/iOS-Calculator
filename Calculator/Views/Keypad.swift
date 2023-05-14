//
//  Keypad.swift
//  Calculator
//
//  Created by Nikos Galinos on 14/5/23.
//

import SwiftUI
import Foundation

struct Keypad: View {
    @EnvironmentObject var data : Calculator

    var body: some View {
        
        VStack{
            Spacer()
            //1sr row
            HStack(spacing: 15){
                Button{
                    data.calc.inp="0"
                    data.calc.combination="0"
                    data.calc.result="0"
                }
            label:{
                RoundButtonAC(symbol: "AC")}
                Button{
                    if(data.calc.combination.count==1){
                        data.calc.combination="0"
                        
                    }else{
                        data.calc.combination.removeLast()
                        
                    }
                    
                }
            label:{
                RoundButtonAC(symbol: "DE")}
                Button{if(data.calc.combination.last == "+" || data.calc.combination.last == "-" ||
                         data.calc.combination.last == "*" ||
                         data.calc.combination.last == "/" ||
                          data.calc.combination.last == "."
                      )
                      {data.calc.combination.removeLast()
                          data.calc.combination+="/100"
                          
                      }else{
                          data.calc.combination+="/100"
                      }
                }
            label:{
                RoundButtonAC(symbol: "%")}
                Button{if(data.calc.combination.last == "+" || data.calc.combination.last == "-" ||
                         data.calc.combination.last == "*" ||
                         data.calc.combination.last == "/" ||
                          data.calc.combination.last == "."
                      )
                      {data.calc.combination.removeLast()
                          data.calc.combination+="/"
                          
                      }else{
                          data.calc.combination+="/"
                      }}
            label:{
                RoundButtonSymbol(symbol: "÷")}
            }.padding(.bottom,15)
            
            //2nd row
            
            HStack(spacing: 15){
                Button{
                    data.calc.inp.append("7")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="7"
                    }else{data.calc.combination+="7"}

                }
            label:{
                RoundButtonNumber(symbol: "7")}
                Button{
                    data.calc.inp.append("8")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="8"
                    }else{data.calc.combination+="8"}
                }
            label:{
                RoundButtonNumber(symbol: "8")}
                
                Button{data.calc.inp.append("9")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="9"
                    }else{data.calc.combination+="9"}}
            label:{
                RoundButtonNumber(symbol: "9")}
                Button{if(data.calc.combination.last == "+" || data.calc.combination.last == "-" ||
                         data.calc.combination.last == "*" ||
                         data.calc.combination.last == "/" ||
                          data.calc.combination.last == "."
                      )
                      {data.calc.combination.removeLast()
                          data.calc.combination+="*"
                          
                      }else{
                          data.calc.combination+="*"
                      }}
            label:{
                RoundButtonSymbol(symbol: "×")}
            }.padding(.bottom,15)
            
            //3d row
            
            HStack(spacing: 15){
                Button{data.calc.inp.append("4")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="4"
                    }else{data.calc.combination+="4"}}
            label:{
                RoundButtonNumber(symbol: "4")}
                Button{data.calc.inp.append("5")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="5"
                    }else{data.calc.combination+="5"}}
            label:{
                RoundButtonNumber(symbol: "5")}
                Button{data.calc.inp.append("6")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="6"
                    }else{data.calc.combination+="6"}}
            label:{
                RoundButtonNumber(symbol: "6")}
                Button{if(data.calc.combination.last == "+" || data.calc.combination.last == "-" ||
                          data.calc.combination.last == "*" ||
                          data.calc.combination.last == "/" ||
                          data.calc.combination.last == "."
                       )
                       {data.calc.combination.removeLast()
                           data.calc.combination+="-"
                           
                       }else{
                           data.calc.combination+="-"
                       }}
            label:{
                RoundButtonSymbol(symbol: "-")}
            }.padding(.bottom,15)
            
            //4th row
            
            
            HStack(spacing: 15){
                Button{data.calc.inp.append("1")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="1"
                    }else{data.calc.combination+="1"}}
            label:{
                RoundButtonNumber(symbol: "1")}
                Button{data.calc.inp.append("2")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="2"
                    }else{data.calc.combination+="2"}}
            label:{
                RoundButtonNumber(symbol: "2")}
                Button{data.calc.inp.append("3")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="3"
                    }else{data.calc.combination+="3"}}
            label:{
                RoundButtonNumber(symbol: "3")}
                Button{if(data.calc.combination.last == "+" || data.calc.combination.last == "-" ||
                          data.calc.combination.last == "*" ||
                          data.calc.combination.last == "/" ||
                          data.calc.combination.last == "."
                       )
                       {data.calc.combination.removeLast()
                           data.calc.combination+="+"
                           
                       }else{
                           data.calc.combination+="+"
                       }}
            label:{
                RoundButtonSymbol(symbol: "+")}
            }.padding(.bottom,15)
            
            
            //5th row
            
            
            HStack(spacing: 15){
                Button{data.calc.inp.append("0")
                    if(data.calc.combination.elementsEqual("0")){
                        data.calc.combination="0"
                    }else if (data.calc.combination.last=="/"){
                        
                    }
                    else{data.calc.combination+="0"}}
            label:{
                RoundButtonZero(symbol: "0")}
            
                Button{if(data.calc.combination.last == "+" || data.calc.combination.last == "-" ||
                          data.calc.combination.last == "*" ||
                          data.calc.combination.last == "/" ||
                          data.calc.combination.last == "."
                       )
                       {data.calc.combination.removeLast()
                           data.calc.combination+="."
                           
                       }else{
                           data.calc.combination+="."
                       }}
            label:{
                RoundButtonNumber(symbol: ",")}
                Button{
                    let expression = NSExpression(format: data.calc.combination)
                    if let result = expression.expressionValue(with: nil, context: nil) as? Double {
                
                        data.calc.result = String(result)
                    } else {
                        print("Invalid equation")
                    }
                }
            label:{
                RoundButtonSymbol(symbol: "=")}
            }.padding(.bottom,15)
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
    }
}

struct Keypad_Previews: PreviewProvider {
    static var previews: some View {
        Keypad().environmentObject(Calculator())
    }
}
