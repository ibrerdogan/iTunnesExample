//
//  SongViewModel.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 11.10.2022.
//

import Foundation
import Combine
class SongViewModel : ObservableObject
{
    @Published var songs : [Song] = []
    
    @Published var searchingText = ""
    @Published var limit = 20
    @Published var state = searchState.loadAll
    private var service = APIService()
    var page : Int = 1
    private var subscribe = Set<AnyCancellable>()
    
    init()
    {
        $searchingText
            .dropFirst()
            .debounce(for: .seconds(0.4), scheduler: RunLoop.main)
            .sink { [weak self] text in
                self?.state = .good
                self?.page = 1
                self?.songs = []
                self?.fetchSongs(searchText: text)
            }
            .store(in: &subscribe)
        
        
    }
    func loadMore()
    {
        fetchSongs(searchText: searchingText)
    }
    
    
    func fetchSongs(searchText : String)
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
        
        service.fetchSong(searchText: searchText, limit: limit, page: page) {[weak self] result in
            switch result
            {
            case .failure(let error):
                self?.state = .error(error.localizedDescription)
                
            case .success(let results):
                DispatchQueue.main.async {
                    for song in results.results
                    {
                        self?.songs.append(song)
                    }
                    self?.page += 1
                    
                    self?.state = (results.results.count == self?.limit) ? .good : .loadAll
                }
            }
        }
    }
}
