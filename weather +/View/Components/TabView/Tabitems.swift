//
//  Tabitems.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import Foundation

enum TabItems: Int, CaseIterable, Identifiable {
    var id: Int { return rawValue }
    
    case home = 0
    case search
    case favorite
    case profile
    
    var systemImageName: String {
        switch self {
        case .home:
            return "house"
        case .search:
            return "magnifyingglass"
        case .favorite:
            return "heart"
        case .profile:
            return "person"
        }
    }
}
