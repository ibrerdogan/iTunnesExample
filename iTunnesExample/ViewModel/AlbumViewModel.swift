//
//  AlbumViewModel.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 11.10.2022.
//

import Foundation
import Combine
//https://itunes.apple.com/search?term=jack+johnson&entity=album&limit=25
//https://itunes.apple.com/search?term=jack+johnson&entity=song&limit=25
//https://itunes.apple.com/search?term=jack+johnson&entity=movie&limit=25


class AlbumViewModel : ObservableObject
{
    @Published var albums : [Album] = []
    @Published var searchingText = ""
    @Published var limit = 20
    @Published var state = searchState.loadAll
    var service = APIService()
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
                self?.albums = []
                self?.fetchAlbums(searchText: text)
            }
            .store(in: &subscribe)
        
        
    }
 
    
    func loadMore()
    {
        fetchAlbums(searchText: searchingText)
    }
    
    func fetchAlbums(searchText : String)
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
        
        service.fetchAlbum(searchText: searchText, limit: limit, page: page) {[weak self] result in
            switch result
            {
            case .failure(let error):
                self?.state = .error(error.localizedDescription)
                
            case .success(let results):
                DispatchQueue.main.async {
                    for album in results.results
                    {
                        self?.albums.append(album)
                    }
                    self?.page += 1
                    
                    self?.state = (results.results.count == self?.limit) ? .good : .loadAll
                }
            }
        }
    }
    
    
   
}


//  guard let urlString = createURL(for: searchText,type: entityType.album) else {return}
  
  //MARK: bu eski fonsiyondu.
//  URLSession.shared.dataTask(with: urlString) { data, response, error in
//      if let error = error {
//          self.state = .error(error.localizedDescription)
//      }
//      if let data = data {
//          do{
//             let album = try JSONDecoder().decode(AlbumResult.self, from: data)
//              DispatchQueue.main.async {
//                  for album in album.results
//                  {
//                      self.albums.append(album)
//                  }
//                  self.page += 1
//
//                  self.state = (album.results.count == self.limit) ? .good : .loadAll
//              }
//          }
//          catch
//          {
//              print(String(describing: error))
//              self.state = .error(error.localizedDescription)
//          }
//
//
//      }
//  }.resume()
  
