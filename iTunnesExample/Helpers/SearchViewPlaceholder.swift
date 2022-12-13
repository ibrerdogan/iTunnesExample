//
//  SearchViewPlaceholder.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import SwiftUI

struct SearchViewPlaceholder : View {
    @Binding var searchText : String
    var body: some View{
        let suggestions = ["kalben","karsu","haluk"]
        VStack{
            Text("Trendings")
                .font(.title)
            
            ForEach(suggestions, id: \.self){ sugges in
                Button {
                    searchText = sugges
                } label: {
                    Text(sugges).font(.title3)
                }

            }
        }
    }
}

struct SearchViewPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewPlaceholder(searchText: .constant(""))
    }
}
