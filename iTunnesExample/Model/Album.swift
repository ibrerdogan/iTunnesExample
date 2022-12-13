// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct AlbumResult: Codable {
    let resultCount: Int
    let results: [Album]
}

// MARK: - Result
struct Album: Codable , Identifiable{
    var id = UUID().uuidString
    let wrapperType: String
    let collectionType: String
    let artistID, collectionID: Int
    let amgArtistID: Int?
    let artistName, collectionName, collectionCensoredName: String
    let artistViewURL, collectionViewURL: String?
    let artworkUrl60, artworkUrl100: String
    let collectionPrice: Double?
    let collectionExplicitness: String
    let trackCount: Int
    let copyright: String?
    let country: String
    let currency: String
    let releaseDate: String
    let primaryGenreName: String
    let contentAdvisoryRating: String?

    enum CodingKeys: String, CodingKey {
        case wrapperType, collectionType
        case artistID = "artistId"
        case collectionID = "collectionId"
        case amgArtistID = "amgArtistId"
        case artistName, collectionName, collectionCensoredName
        case artistViewURL = "artistViewUrl"
        case collectionViewURL = "collectionViewUrl"
        case artworkUrl60, artworkUrl100, collectionPrice, collectionExplicitness, trackCount, copyright, country, currency, releaseDate, primaryGenreName, contentAdvisoryRating
    }
    
    
    static func example()->Album
    {
        
        return Album(id: UUID().uuidString, wrapperType: "collection", collectionType: "Album", artistID: 278873078, collectionID: 1161503945, amgArtistID: 1107691,
                     artistName: "24K Magic", collectionName: "24K Magic", collectionCensoredName: "24K Magic", artistViewURL: "https://music.apple.com/us/artist/bruno-mars/278873078?uo=4",
                     collectionViewURL: "https://music.apple.com/us/album/24k-magic/1161503945?uo=4",
                     artworkUrl60: "https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/e3/47/a0/e347a0cc-87ce-5d05-d560-176c7d48f66e/075679904119.jpg/60x60bb.jpg",
                     artworkUrl100: "https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/e3/47/a0/e347a0cc-87ce-5d05-d560-176c7d48f66e/075679904119.jpg/100x100bb.jpg", collectionPrice: 9.99, collectionExplicitness: "notExplicit", trackCount: 9, copyright: "℗ 2016 Atlantic Recording Corporation for the United States and WEA International Inc. for the world outside of the United States. A Warner Music Group Company",
                     country: "USA", currency: "USD", releaseDate: "2016-11-18T08:00:00Z", primaryGenreName: "Pop", contentAdvisoryRating: nil)
        
      
    }
}

enum CollectionExplicitness: String, Codable {
    case explicit = "explicit"
    case notExplicit = "notExplicit"
}

enum CollectionType: String, Codable {
    case album = "Album"
}

enum Country: String, Codable {
    case usa = "USA"
}

enum Currency: String, Codable {
    case usd = "USD"
}

enum WrapperType: String, Codable {
    case collection = "collection"
}

