//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

@main
struct CalculatorApp: App {
    @StateObject  var viewModel = CalculatorViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
