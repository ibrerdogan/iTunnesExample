//
//  SongsForAlbumView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct SongsForAlbumView: View {
    @ObservedObject var vm : SongsForAlbumViewModel
    var body: some View {
        List{
            ForEach(vm.songs){song in
                SongRowView(song: song)
            }
        }
        .listStyle(.plain)
    }
}

struct SongsForAlbumView_Previews: PreviewProvider {
    static var previews: some View {
        SongsForAlbumView(vm: SongsForAlbumViewModel(albumID: 1))
    }
}
