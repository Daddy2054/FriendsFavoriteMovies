//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by Jean on 20/10/24.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    static let sampleData = [Friend(name: "Jain"), Friend(name: "Julien"), Friend(name: "Mathieu"), Friend(name: "Max"), Friend(name: "Olivier"),]
}


