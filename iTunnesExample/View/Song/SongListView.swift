//
//  SongListView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import SwiftUI

struct SongListView: View {
    @ObservedObject var vm : SongViewModel
    var body: some View {
        List{
            ForEach(vm.songs){song in
                SongRowView(song: song)
            }
            switch vm.state
            {
            case .good:
                Color.clear
                    .onAppear {
                        vm.loadMore()
                    }
            case .loading:
                ProgressView()
                    .frame(maxWidth:.infinity)
            case .loadAll:
                EmptyView()
                    
                
            case .error(let message):
                Text(message)
            }
        }
        .listStyle(.plain)
    }
}

struct SongListView_Previews: PreviewProvider {
    static var previews: some View {
        SongListView(vm: SongViewModel())
    }
}
