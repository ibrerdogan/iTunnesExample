//
//  SongSectionView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct SongSectionView: View {
    var songs : [Song]
    let rows = Array(repeating: GridItem(.fixed(60),spacing: 0,alignment: .leading), count: 4)
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: rows) {
                ForEach(songs){song in
                   // ImageLoadingView(url: song.artworkUrl60, size: 60)
                    SongRowView(song: song)
                        .frame(width:300)
                }
            }
            .padding([.horizontal,.bottom])
          
            
        }
    }
}

struct SongSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SongSectionView(songs: [Song.example()])
    }
}
