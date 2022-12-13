//
//  AlbumListView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 11.10.2022.
//

import SwiftUI

struct AlbumListView: View {
    @ObservedObject var vm : AlbumViewModel
    var body: some View {
        List{
            ForEach(vm.albums){album in
                NavigationLink {
                    AlbumDetailView(album: album)
                } label: {
                    AlbumRowView(album: album)
                }

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

struct AlbumListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AlbumListView(vm: AlbumViewModel())
                .navigationBarHidden(true)
        }
    }
}
