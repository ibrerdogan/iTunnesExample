//
//  MovieSectionView.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import SwiftUI

struct MovieSectionView: View {
    var movies : [Movie]
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(alignment:.top)
            {
                ForEach(movies){movie in
                    VStack{
                        ImageLoadingView(url: movie.artworkUrl100, size: 100)
                        Text(movie.trackName)
                        Text(movie.artistName)
                            .foregroundColor(.gray)
                    }
                    .frame(width:100)
                    .lineLimit(2)
                    .font(.caption)
                }
            }
            .padding([.horizontal,.bottom])
            
        }
    }
}

struct MovieSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSectionView(movies: [Movie.example()])
    }
}
