//
//  AlbumRowView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct AlbumRowView: View {
    var album : Album
    var body: some View {
        HStack{
           ImageLoadingView(url: album.artworkUrl100 ,size: 100)
            VStack(alignment:.leading)
            {
                Text(album.collectionName).lineLimit(1)
                    .font(.title3)
                Text(album.artistName).lineLimit(1)
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            Spacer(minLength: 10)
            BuyButtonView(url: album.collectionViewURL, price: album.collectionPrice, currency: album.currency)
           
            
        }
    }
}

struct AlbumRowView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumRowView(album: Album.example())
    }
}
