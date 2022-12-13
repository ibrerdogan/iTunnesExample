//
//  AlbumDetailView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct AlbumDetailView: View {
    var album : Album
    @StateObject var songsForAlbumViewModel : SongsForAlbumViewModel
    
    init(album : Album)
    {
        self.album = album
        self._songsForAlbumViewModel = StateObject(wrappedValue: SongsForAlbumViewModel(albumID: album.collectionID))
       
    }
    var body: some View {
        HStack(alignment:.bottom){
           ImageLoadingView(url: album.artworkUrl100 ,size: 100)
            VStack(alignment:.leading)
            {
                Text(album.collectionName).lineLimit(1)
                    .font(.footnote)
                Text(album.artistName).lineLimit(1)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.bottom,5)
                Text(album.primaryGenreName)
                Text("\(album.trackCount) Songs")
                Text("Relased \(formattedDate(value:album.releaseDate))")
                
            }
            .font(.caption)
            Spacer(minLength: 10)
            BuyButtonView(url: album.collectionViewURL, price: album.collectionPrice, currency: album.currency)
           
            
        }
        SongsForAlbumView(vm: songsForAlbumViewModel)
        .padding()
    }
    func formattedDate(value : String)->String
    {
        let dateFormatterGetter = DateFormatter()
        //2016-11-18T08:00:00Z
        dateFormatterGetter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'" //bu bizim ham verimiz. bunu verdik
        guard let date = dateFormatterGetter.date(from: value) else // burada yukarıda verdiğimiz şekle göre bunu ayarlayacağı stringi verdik.
        {
            return ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        dateFormatter.string(from: date)
        
        return dateFormatter.string(from: date)
    }
}

struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetailView(album: Album.example())
    }
}
