//
//  SongRowView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct SongRowView: View {
    var song : Song
    var body: some View {
        HStack{
            ImageLoadingView(url: song.artworkUrl60!,size: 60)
            VStack(alignment:.leading)
            {
                Text(song.trackName!)
                    .font(.title3)
                Text(song.artistName!+"..-.."+song.collectionName!).lineLimit(1)
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            Spacer(minLength: 10)
            BuyButtonView(url: song.collectionViewURL, price: song.trackPrice, currency: song.currency!)
            
        }
    }
}

struct SongRowView_Previews: PreviewProvider {
    static var previews: some View {
        SongRowView(song: Song.example())
    }
}
