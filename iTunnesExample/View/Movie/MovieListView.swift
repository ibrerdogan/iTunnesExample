//
//  MovieListView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var vm : MovieViewModel
    var body: some View {
        List{
            ForEach(vm.movies){movie in
                MovieRowView(movie: movie)
            }
            switch vm.state
            {
            case .good:
                Color.clear
                    .onAppear {
                       
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

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(vm: MovieViewModel())
    }
}
