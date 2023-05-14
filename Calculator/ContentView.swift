//
//  ContentView.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data : Calculator
    var body: some View {
        
        VStack {
            
            HStack{
                Spacer()
                Result()
                    .environmentObject(data)
                
            }.padding([.top,.bottom],25)
            
            Divider()
            
            
            HStack{
                Spacer()
                Dialer().environmentObject(data)
        
                
            }.padding([.top,.bottom],25)
            Keypad().environmentObject(data)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Calculator())
    }
}
