//
//  BuyButtonView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct BuyButtonView: View {
    let url : String?
    let price : Double?
    let currency : String
    var body: some View {
        if let url = url , let price = price
        {
            Link(destination: URL(string: url)!) {
               // Text("\(price)"+" \(currency)")
                Text(formattedPrice())
            }
            .buttonStyle(BuyButtonStle())
        }
    }
    
    func formattedPrice()-> String
    {
        guard let price = price else {
            return ""
        }

        
        let formattedPrice = NumberFormatter()
        formattedPrice.numberStyle = .currency
        formattedPrice.currencyCode = currency
        
        let priceString = formattedPrice.string(from: NSNumber(value : price))
        return priceString ?? ""
    }
}

struct BuyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BuyButtonView(url: "", price: 0, currency: "")
    }
}
