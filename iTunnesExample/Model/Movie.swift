// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let movie = try? newJSONDecoder().decode(Movie.self, from: jsonData)

import Foundation

// MARK: - Movie
struct MovieResult: Codable {
    let resultCount: Int
    let results: [Movie]
}

// MARK: - Result
struct Movie: Codable , Identifiable{
    var id = UUID().uuidString
    let wrapperType: String?
    let kind: String?
    let trackID: Int
    let artistName, trackName, trackCensoredName: String
    let trackViewURL: String
    let previewURL: String?
    let artworkUrl30, artworkUrl60, artworkUrl100: String
    let collectionPrice, trackPrice, trackRentalPrice, collectionHDPrice: Double?
    let trackHDPrice, trackHDRentalPrice: Double?
    let releaseDate: String
    let collectionExplicitness, trackExplicitness: String?
    let trackTimeMillis: Int?
    let country: String?
    let currency: String?
    let primaryGenreName: String
    let contentAdvisoryRating: String?
    let longDescription: String
    let shortDescription: String?
    let artistID: Int?
    let artistViewURL: String?

    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case trackID = "trackId"
        case artistName, trackName, trackCensoredName
        case trackViewURL = "trackViewUrl"
        case previewURL = "previewUrl"
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice, trackRentalPrice
        case collectionHDPrice = "collectionHdPrice"
        case trackHDPrice = "trackHdPrice"
        case trackHDRentalPrice = "trackHdRentalPrice"
        case releaseDate, collectionExplicitness, trackExplicitness, trackTimeMillis, country, currency, primaryGenreName, contentAdvisoryRating, longDescription, shortDescription
        case artistID = "artistId"
        case artistViewURL = "artistViewUrl"
    }
    
    
    static func example()->Movie
    {
        
        return Movie(id: UUID().uuidString, wrapperType: "track", kind: "feature-movie", trackID: 555550766, artistName: "Seth MacFarlane", trackName: "Ted (2012)", trackCensoredName: "TED: Los Relampamigos Colección de Dos Películas",
                     trackViewURL: "https://itunes.apple.com/us/movie/ted-2012/id555550766?uo=4",
                     previewURL : "https://video-ssl.itunes.apple.com/itunes-assets/Video127/v4/1c/3c/16/1c3c1699-1b8c-786c-8e2f-43a06f36f4dc/mzvf_3864666054893076176.640x454.h264lc.U.p.m4v",
                     artworkUrl30: "https://is2-ssl.mzstatic.com/image/thumb/Video/v4/9a/ea/bf/9aeabf3f-088f-48d3-00ad-3b6d3fe63388/mza_5595659148608884109.jpg/30x30bb.jpg",
                     artworkUrl60: "https://is2-ssl.mzstatic.com/image/thumb/Video/v4/9a/ea/bf/9aeabf3f-088f-48d3-00ad-3b6d3fe63388/mza_5595659148608884109.jpg/60x60bb.jpg", artworkUrl100: "https://is2-ssl.mzstatic.com/image/thumb/Video/v4/9a/ea/bf/9aeabf3f-088f-48d3-00ad-3b6d3fe63388/mza_5595659148608884109.jpg/100x100bb.jpg", collectionPrice: 14.99, trackPrice: 14.99, trackRentalPrice: 4.99, collectionHDPrice: 4.44, trackHDPrice: 4.44, trackHDRentalPrice: 2.33, releaseDate: "2012-06-29T07:00:00Z", collectionExplicitness: nil, trackExplicitness: nil, trackTimeMillis: nil, country: "USA", currency: "USD", primaryGenreName: "Comedy", contentAdvisoryRating: nil, longDescription: "Family Guy creator Seth MacFarlane delivers his signature boundary-pushing humor in the outrageous comedy-blockbuster critics are calling “hysterically //funny!” (Peter Travers, Rolling Stone) John Bennett (Mark Wahlberg) is a grown man whose cherished teddy bear came to life as the result of a childhood wish…and hasn’t left //his side since. Can John’s relationship with longtime girlfriend, Lori (Mila Kunis), move forward with his lovably profane buddy in the picture?", shortDescription: nil, artistID: nil, artistViewURL: nil)
    }
 

}
//{"wrapperType":"track", "kind":"feature-movie", "collectionId":1465016222, "trackId":555550766, "artistName":"Seth MacFarlane", "collectionName":"TED: Los Relampamigos Colección //de Dos Películas", "trackName":"Ted (2012)", "collectionCensoredName":"TED: Los Relampamigos Colección de Dos Películas", "trackCensoredName":"Ted (2012)", //"collectionArtistId":345353262, "collectionArtistViewUrl":"https://itunes.apple.com/us/artist/universal-studios-home-entertainment/345353262?uo=4", //"collectionViewUrl":"https://itunes.apple.com/us/movie/ted-2012/id555550766?uo=4", "trackViewUrl":"https://itunes.apple.com/us/movie/ted-2012/id555550766?uo=4",
//"previewUrl":"https://video-ssl.itunes.apple.com/itunes-assets/Video127/v4/1c/3c/16/1c3c1699-1b8c-786c-8e2f-43a06f36f4dc/mzvf_3864666054893076176.640x454.h264lc.U.p.m4v", //"artworkUrl30":"https://is2-ssl.mzstatic.com/image/thumb/Video/v4/9a/ea/bf/9aeabf3f-088f-48d3-00ad-3b6d3fe63388/mza_5595659148608884109.jpg/30x30bb.jpg", //"artworkUrl60":"https://is2-ssl.mzstatic.com/image/thumb/Video/v4/9a/ea/bf/9aeabf3f-088f-48d3-00ad-3b6d3fe63388/mza_5595659148608884109.jpg/60x60bb.jpg", //"artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Video/v4/9a/ea/bf/9aeabf3f-088f-48d3-00ad-3b6d3fe63388/mza_5595659148608884109.jpg/100x100bb.jpg", "collectionPrice":14.99, //"trackPrice":14.99, "trackRentalPrice":3.99, "collectionHdPrice":14.99, "trackHdPrice":14.99, "trackHdRentalPrice":3.99, "releaseDate":"2012-06-29T07:00:00Z", //"collectionExplicitness":"notExplicit", "trackExplicitness":"notExplicit", "discCount":1, "discNumber":1, "trackCount":2, "trackNumber":1, "trackTimeMillis":6376543, //"country":"USA", "currency":"USD", "primaryGenreName":"Comedy", "contentAdvisoryRating":"R", "shortDescription":"Family Guy creator Seth MacFarlane brings his boundary-pushing brand //of humor to the big screen for",
//"longDescription":"Family Guy creator Seth MacFarlane delivers his signature boundary-pushing humor in the outrageous comedy-blockbuster critics are calling “hysterically //funny!” (Peter Travers, Rolling Stone) John Bennett (Mark Wahlberg) is a grown man whose cherished teddy bear came to life as the result of a childhood wish…and hasn’t left //his side since. Can John’s relationship with longtime girlfriend, Lori (Mila Kunis), move forward with his lovably profane buddy in the picture?", "hasITunesExtras":true},
