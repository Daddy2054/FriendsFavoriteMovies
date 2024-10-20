//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by Jean on 20/10/24.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }
    
    static let sampleData = [
        Movie(title: "The Shawshank Redemption", releaseDate: .init(timeIntervalSince1970: 1571423200)),
        Movie(title: "The Godfather", releaseDate: .init(timeIntervalSince1970: 1572518400)),
        Movie(title: "The Dark Knight", releaseDate: .init(timeIntervalSince1970: 1587843200)),
    ]
}
