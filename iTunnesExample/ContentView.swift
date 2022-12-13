//
//  ContentView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 11.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       // TabView{
       //     AlbumSearchView()
       //         .tag(0)
       //         .tabItem {
       //             Image(systemName: "person")
       //         }
       //     SongSearchView()
       //         .tag(1)
       //         .tabItem {
       //             Image(systemName: "house")
       //         }
       //     MovieSearchView()
       //         .tag(1)
       //         .tabItem {
       //             Image(systemName: "house")
       //         }
       // }
        SearchView()
       // SongRowView(song: Song.example())
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
