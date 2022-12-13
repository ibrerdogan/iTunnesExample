//
//  AlbumSectionView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct AlbumSectionView: View {
    var albums : [Album]
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(alignment:.top)
            {
                ForEach(albums){album in
                    VStack{
                        ImageLoadingView(url: album.artworkUrl100, size: 100)
                        Text(album.collectionName)
                        Text(album.artistName)
                            .foregroundColor(.gray)
                    }
                    .frame(width:100)
                    .lineLimit(2)
                    .font(.caption)
                }
            }
            .padding([.horizontal,.bottom])
            
        }
    }
}

struct AlbumSectionView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumSectionView(albums: [Album.example()])
    }
}
