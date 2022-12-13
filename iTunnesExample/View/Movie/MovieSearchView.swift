//
//  MovieSearchView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import SwiftUI

struct MovieSearchView: View {
    @StateObject var vm : MovieViewModel
    var body: some View {
        NavigationView
         {
             Group{
                 if vm.searchingText.isEmpty
                 {
                     SearchViewPlaceholder(searchText: $vm.searchingText)
                 }
                 else
                 {
                     MovieListView(vm: vm)
                 }
             }
             .navigationTitle("Movies")
             //.searchable(text: $vm.searchingText)
         }
         .navigationViewStyle(.stack) //Unable to simultaneously satisfy constraints. hatası için verdim bunu
    }
}

struct MovieSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSearchView(vm: MovieViewModel())
    }
}
