//
//  ContentView.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: CalculatorViewModel
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Result()
            }
            .padding(.vertical, 25)
            Divider()
            HStack {
                Spacer()
                Dialer()
            }
            .padding(.vertical, 25)
            Keypad()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(CalculatorViewModel())
    }
}
