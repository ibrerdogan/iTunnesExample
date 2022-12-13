//
//  SongForAlbumViewModel.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 13.10.2022.
//

import Foundation

class SongsForAlbumViewModel : ObservableObject
{
    
    @Published var songs : [Song] = []
    @Published var state = searchState.loadAll
    private var service = APIService()
    var id = 0
    //https://itunes.apple.com/lookup?id=909253&entity=album.
    
    init(albumID : Int)
    {
        self.id = albumID
        self.fetchSongs(id: self.id)
    }
    
    func fetchSongs(id : Int)
    {
        service.fetchSong(id: id){[weak self] result in
            switch result
            {
            case .failure(let error):
                self?.state = .error(error.localizedDescription)
                
            case .success(let results):
                DispatchQueue.main.async {
                    var sortedArray = results.results
                    _ = sortedArray.removeFirst()
                    for song in sortedArray
                    {
                        self?.songs.append(song)
                    }
                   
                    
                    self?.state = .good
                }
            }
        }
    }
}
