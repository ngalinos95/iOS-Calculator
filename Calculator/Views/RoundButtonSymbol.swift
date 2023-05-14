//
//  RoundButton.swift
//  Calculator
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

struct RoundButtonSymbol: View {
    var symbol : String = ""
    
    var body: some View{
        Text("+")
            .font(.system(size: 40 , weight: .bold))        .foregroundColor(.white)
        .frame(maxWidth: 50, maxHeight: 50)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .shadow(radius: 10)
        
        
        
        
        
           }
        }
            

            
        
        
        
    

        
        struct RoundButtonSymbol_Previews: PreviewProvider {
            static var previews: some View {
                RoundButtonSymbol()
            }
        }
    

