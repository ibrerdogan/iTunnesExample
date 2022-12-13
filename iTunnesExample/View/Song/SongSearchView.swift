//
//  SongSearchView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import SwiftUI

struct SongSearchView: View {
    @StateObject var vm : SongViewModel
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
                     SongListView(vm: vm)
                 }
             }
             .navigationTitle("Songs")
            // .searchable(text: $vm.searchingText)
         }
         .navigationViewStyle(.stack) //Unable to simultaneously satisfy constraints. hatası için verdim bunu
    }
}

struct SongSearchView_Previews: PreviewProvider {
    static var previews: some View {
        SongSearchView(vm: SongViewModel())
    }
}
