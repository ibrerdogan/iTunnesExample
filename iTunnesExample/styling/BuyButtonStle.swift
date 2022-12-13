//
//  BuyButtonStle.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI


struct BuyButtonStle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.accentColor)
            .padding(.vertical,5)
            .padding(.horizontal,10)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke())
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

struct BuyButtonStle_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Button("1.99 USD"){
                
            }
            .buttonStyle(BuyButtonStle())
        }
    }
}
