//
//  EntitiyType.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import Foundation
enum entityType : String, Identifiable, CaseIterable
{
    case all
    case album
    case song
    case movie
    
    var id : String {
        return self.rawValue
    }
    
    func name()-> String{
        switch self {
        case .all:
            return "All"
        case .album:
            return "Albums"
        case .song:
            return "Songs"
        case .movie:
            return "Movies"
        }
    }
    
}
