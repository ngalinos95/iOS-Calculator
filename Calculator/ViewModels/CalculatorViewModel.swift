//
//  Data.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import Foundation
class CalculatorViewModel : ObservableObject {
    @Published var calc = Dial()
}



struct Dial : Identifiable {
    var id = UUID()
    var inp : String = "0"
    var combination : String = "0"
    var result : String = "0"
}
