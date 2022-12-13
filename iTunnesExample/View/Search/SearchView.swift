//
//  SearchView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import SwiftUI

struct SearchView: View {
    @State private var type = entityType.all
    @State private var searchTerm : String = ""
    @StateObject private var albumViewModel = AlbumViewModel()
    @StateObject private var songViewModel = SongViewModel()
    @StateObject private var movieViewModel = MovieViewModel()
    var body: some View {
        NavigationView {
            VStack{
                Picker("select Type", selection: $type) {
                    ForEach(entityType.allCases){type in
                        Text(type.name())
                            .tag(type)
                    }
                }.pickerStyle(.segmented)
                    .padding(.horizontal)
                Divider()
                if searchTerm.count == 0
                {
                    SearchViewPlaceholder(searchText: $searchTerm)
                        .frame(maxHeight:.infinity)
                }else
                {
                    switch type {
                    case .all:
                        SearchAllListView(albumViewModel: albumViewModel, songViewModel: songViewModel, movieViewModel: movieViewModel)
                            .frame(maxHeight: .infinity)
                    case .album:
                        AlbumSearchView(vm: albumViewModel)
                            .onAppear {
                                albumViewModel.searchingText = searchTerm
                            }
                    case .song:
                        SongSearchView(vm: songViewModel)
                            .onAppear {
                                songViewModel.searchingText = searchTerm
                            }
                    case .movie:
                        MovieSearchView(vm: movieViewModel)
                            .onAppear {
                                movieViewModel.searchingText = searchTerm
                            }
                    }
                }
               
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }.searchable(text: $searchTerm)
        .onChange(of: searchTerm) { newValue in
            switch type{
            case .all:
                albumViewModel.searchingText = newValue
                songViewModel.searchingText = newValue
                movieViewModel.searchingText = newValue
            case .song:
                songViewModel.searchingText = newValue
            case .album:
                albumViewModel.searchingText = newValue
            case .movie:
                movieViewModel.searchingText = newValue
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
