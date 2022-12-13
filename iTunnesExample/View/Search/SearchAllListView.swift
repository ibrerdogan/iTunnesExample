//
//  SearchAllListView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import SwiftUI

struct SearchAllListView: View {
    @ObservedObject var albumViewModel : AlbumViewModel
    @ObservedObject var songViewModel : SongViewModel
    @ObservedObject var movieViewModel : MovieViewModel
    var body: some View {
        ScrollView
        {
            LazyVStack{
                HStack{
                    Text("Songs")
                        .padding(.horizontal)
                        .foregroundColor(.gray)
                    Spacer()
                    NavigationLink {
                        SongListView(vm: songViewModel)
                    } label: {
                        HStack{
                            Text("See All")
                            Image(systemName: "chevron.right")
                        }.padding(.horizontal)
                            .foregroundColor(.gray)
                    }

                    
                }
                SongSectionView(songs: songViewModel.songs)
                    .padding(.horizontal)
                Divider()
                HStack{
                    Text("Movies")
                        .padding(.horizontal)
                        .foregroundColor(.gray)
                    Spacer()
                    NavigationLink {
                        MovieListView(vm: movieViewModel)
                    } label: {
                        HStack{
                            Text("See All")
                            Image(systemName: "chevron.right")
                        }.padding(.horizontal)
                            .foregroundColor(.gray)
                    }

                    
                }
                MovieSectionView(movies: movieViewModel.movies)
                    .padding(.horizontal)
                Divider()
                HStack{
                    Text("Albums")
                        .padding(.horizontal)
                        .foregroundColor(.gray)
                    Spacer()
                    NavigationLink {
                        AlbumListView(vm: albumViewModel)
                    } label: {
                        HStack{
                            Text("See All")
                            Image(systemName: "chevron.right")
                        }
                        .padding(.horizontal)
                        .foregroundColor(.gray)
                    }

                    
                }
                AlbumSectionView(albums: albumViewModel.albums)
                    .padding(.horizontal)
                Divider()
            }
            Text("albums = \(albumViewModel.albums.count)")
            Text("songs = \(songViewModel.songs.count)")
            Text("movies = \(movieViewModel.movies.count)")
        }
    }
}

struct SearchAllListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchAllListView(albumViewModel: AlbumViewModel(), songViewModel: SongViewModel(), movieViewModel: MovieViewModel())
    }
}
