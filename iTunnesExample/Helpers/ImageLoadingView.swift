//
//  ImageLoadingView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct ImageLoadingView: View {
    var url : String
    var size : CGFloat
    var body: some View {
        AsyncImage(url: URL(string: url)) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Color.gray
        }
        .frame(width: size, height: size, alignment: .center)
    }
}

struct ImageLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLoadingView(url: "",size: 60)
    }
}
