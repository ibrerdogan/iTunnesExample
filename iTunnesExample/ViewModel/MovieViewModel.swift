//
//  MovieViewModel.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import Foundation
import Combine
class MovieViewModel : ObservableObject
{
    @Published var movies : [Movie] = []
    
    @Published var searchingText = ""
    @Published var state = searchState.loadAll
    private var service = APIService()
    private var subscribe = Set<AnyCancellable>()
    
    init()
    {
        $searchingText
            .dropFirst()
            .debounce(for: .seconds(0.4), scheduler: RunLoop.main)
            .sink { [weak self] text in
                self?.state = .good
                self?.movies = []
                self?.fetchMovie(searchText: text)
            }
            .store(in: &subscribe)
        
        
    }
    
    
    func fetchMovie(searchText : String)
    {
        //arama metni boş ise
        guard !searchText.isEmpty else
        {
            return
        }
        //state check
        if state == .loading {
            return
        }
        
        state = .loading
        
        service.fetchMovie(searchText: searchText) {[weak self] result in
            switch result
            {
            case .failure(let error):
                self?.state = .error(error.localizedDescription)
                
            case .success(let results):
                DispatchQueue.main.async {
                    for movie in results.results
                    {
                        self?.movies.append(movie)
                    }
                    self?.state = .good
                }
            }
        }
    }
}
