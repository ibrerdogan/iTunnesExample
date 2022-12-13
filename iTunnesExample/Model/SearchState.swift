//
//  SearchState.swift
//  iTunnesExample
//
//  Created by İbrahim Erdogan on 12.10.2022.
//

import Foundation

enum searchState : Comparable
{
    case good
    case loading
    case loadAll
    case error(String)
}
