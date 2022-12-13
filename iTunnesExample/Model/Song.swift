//
//  Song.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 11.10.2022.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let song = try? newJSONDecoder().decode(Song.self, from: jsonData)

import Foundation

// MARK: - Song
struct SongResult: Codable {
    let resultCount: Int
    let results: [Song]
}

// MARK: - Result
struct Song: Codable ,Identifiable{
    var id = UUID().uuidString
    let wrapperType: String
    let kind: String?//
    let artistID, collectionID, trackID: Int?//
    let artistName, collectionName, trackName, collectionCensoredName: String?//
    let trackCensoredName: String?//
    let artistViewURL, collectionViewURL, trackViewURL: String?//
    let previewURL: String?//
    let artworkUrl30, artworkUrl60, artworkUrl100: String?//
    let collectionPrice, trackPrice: Double?//
    let releaseDate: String?//
    let collectionExplicitness, trackExplicitness: String?//
    let discCount, discNumber, trackCount, trackNumber: Int?//
    let trackTimeMillis: Int?//
    let country: String?//
    let currency: String?//
    let primaryGenreName: String?//
    let isStreamable: Bool?//
    let collectionArtistName: String?
    let collectionArtistID: Int?
    let collectionArtistViewURL: String?

    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case artistID = "artistId"
        case collectionID = "collectionId"
        case trackID = "trackId"
        case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
        case artistViewURL = "artistViewUrl"
        case collectionViewURL = "collectionViewUrl"
        case trackViewURL = "trackViewUrl"
        case previewURL = "previewUrl"
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice, releaseDate, collectionExplicitness, trackExplicitness, discCount, discNumber, trackCount, trackNumber, trackTimeMillis, country, currency, primaryGenreName, isStreamable, collectionArtistName
        case collectionArtistID = "collectionArtistId"
        case collectionArtistViewURL = "collectionArtistViewUrl"
    }
    
    static func example()->Song
    {
        return Song(id: UUID().uuidString, wrapperType: "track", kind: "song", artistID: 554290495, collectionID: 1445144506, trackID: 1445144527, artistName: "PSY", collectionName: "Gangnam Style - Single", trackName: "Gangnam Style", collectionCensoredName: "Gangnam Style - Single", trackCensoredName: "Gangnam Style", artistViewURL: "https://music.apple.com/us/artist/psy/554290495?uo=4", collectionViewURL: "https://music.apple.com/us/album/gangnam-style/1445144506?i=1445144527&uo=4", trackViewURL: "https://music.apple.com/us/album/gangnam-style/1445144506?i=1445144527&uo=4", previewURL: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/84/f5/67/84f567ff-35dd-9fc8-ab4b-e047abf854b1/mzaf_6401934310117334994.plus.aac.p.m4a",
                    artworkUrl30: "https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/7c/52/87/7c5287bc-818f-55ed-e607-08b052963632/12UMGIM50914.rgb.jpg/30x30bb.jpg",
                    artworkUrl60: "https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/7c/52/87/7c5287bc-818f-55ed-e607-08b052963632/12UMGIM50914.rgb.jpg/60x60bb.jpg",
                    artworkUrl100: "https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/7c/52/87/7c5287bc-818f-55ed-e607-08b052963632/12UMGIM50914.rgb.jpg/100x100bb.jpg",
                    collectionPrice: 1.29, trackPrice: 1.29, releaseDate: "2012-07-15T12:00:00Z", collectionExplicitness: "notExplicit", trackExplicitness: "notExplicit",
                    discCount: 1, discNumber: 1, trackCount: 1, trackNumber: 1, trackTimeMillis: 219493, country: "USA", currency: "USD", primaryGenreName: "Pop", isStreamable: true, collectionArtistName: "", collectionArtistID: nil, collectionArtistViewURL: "")
    }

}

