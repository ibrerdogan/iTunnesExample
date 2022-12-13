//
//  MovieRowView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct MovieRowView: View {
    var movie : Movie
    var body: some View {
        HStack{
            ImageLoadingView(url: movie.artworkUrl100,size: 100)
            VStack(alignment:.leading)
            {
                Text(movie.trackCensoredName).lineLimit(1)
                    .font(.title3)
                Text(movie.shortDescription ?? "").lineLimit(1)
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            Spacer(minLength: 10)
            BuyButtonView(url: movie.trackViewURL, price: movie.trackPrice, currency: movie.currency ?? "")
           
            
        }
    }
}

struct MovieRowView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRowView(movie: Movie.example())
    }
}
