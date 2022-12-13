//
//  AlbumSearchView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 11.10.2022.
//

import SwiftUI

struct AlbumSearchView: View {
    @StateObject var vm : AlbumViewModel
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
                    AlbumListView(vm: vm)
                }
            }
            .navigationTitle("Albums")
          //  .searchable(text: $vm.searchingText)
        }
        .navigationViewStyle(.stack) //Unable to simultaneously satisfy constraints. hatası için verdim bunu
        .onAppear {
          
        }
    }
}


struct AlbumSearchView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumSearchView(vm: AlbumViewModel())
    }
}
