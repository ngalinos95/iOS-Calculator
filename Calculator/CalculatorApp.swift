//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

@main
struct CalculatorApp: App {
    @StateObject  var data = Calculator()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(data)
        }
    }
}
