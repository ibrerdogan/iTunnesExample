//
//  APIService.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import Foundation


class APIService {
    
    
    func fetchAlbum(searchText: String , limit : Int , page : Int,completion : @escaping (Result<AlbumResult,APIError>)->Void)
    {
        let url = createURL(for: searchText, type: .album, limit: limit, page: page)
        fetch(type: AlbumResult.self, url: url, completion: completion)
    }
    
    func fetchSong(searchText: String , limit : Int , page : Int,completion : @escaping (Result<SongResult,APIError>)->Void)
    {
        let url = createURL(for: searchText, type: .song, limit: limit, page: page)
        fetch(type: SongResult.self, url: url, completion: completion)
    }
    
    func fetchSong(id: Int ,completion : @escaping (Result<SongResult,APIError>)->Void)
    {
        let url = createURL(for: id, type: .song)
        fetch(type: SongResult.self, url: url, completion: completion)
    }
    
    func fetchMovie(searchText: String , completion : @escaping (Result<MovieResult,APIError>)->Void)
    {
        let url = createURL(for: searchText, type: .movie, limit: nil, page: nil)
        fetch(type: MovieResult.self, url: url, completion: completion)
    }
    
    
    
    func fetch<T : Codable>(type : T.Type ,url : URL? , completion : @escaping (Result<T,APIError>)->Void)
    {
        //bad url error
        guard let url = url else {
            let error = APIError.badURL
            completion(Result.failure(error))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error as? URLError {
                completion(Result.failure(APIError.urlSession(error)))
            }
            else if let response = response as? HTTPURLResponse,!(200...299).contains(response.statusCode) {
                completion(Result.failure(APIError.badResponse(response.statusCode)))
            }
            if let data = data {
                do{
                   let album = try JSONDecoder().decode(type.self, from: data)
                    completion(Result.success(album))
                    
                }
                catch
                {
                    completion(Result.failure(APIError.decodingError(error as? DecodingError)))
                }
               
               
            }
        }.resume()
    }
    
    func createURL(for searchText : String , type : entityType,limit : Int?, page : Int?) -> URL?
    {
        //https://itunes.apple.com/search?term=jack+johnson&entity=movie
        
        let baseUrl = "https://itunes.apple.com/search" // search aslında enpoint
        var queryItems = [URLQueryItem(name: "term", value: searchText),
                          URLQueryItem(name: "entity", value: type.rawValue)]
        
        if let limit = limit , let page = page {
            let offset = limit * page
            queryItems.append( URLQueryItem(name: "limit", value: String(limit)))
            queryItems.append( URLQueryItem(name: "offset", value: String(offset)))
        }
        
        var components = URLComponents.init(string: baseUrl)
        components?.queryItems = queryItems
        print(components?.url?.absoluteURL ?? "asdasd")
        
        return components?.url
    }
    //https://itunes.apple.com/lookup?id=909253&entity=album.
    
    func createURL(for albumID : Int, type : entityType ) -> URL?
    {
        let baseUrl = "https://itunes.apple.com/lookup"
        let queryItems = [URLQueryItem(name: "id", value: String(albumID)),
                          URLQueryItem(name: "entity", value: type.rawValue)]
        var components = URLComponents.init(string: baseUrl)
        components?.queryItems = queryItems
        print(components?.url?.absoluteURL ?? "asdasd")
        
        return components?.url
    }
}
