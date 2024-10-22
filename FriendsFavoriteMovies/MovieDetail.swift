//
//  MovieDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Jean on 20/10/24.
//

import SwiftUI

struct MovieDetail: View {
    @Bindable var movie: Movie
    let isNew: Bool
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    init(movie: Movie, isNew: Bool = false) {
        self.movie = movie
        self.isNew = isNew
    }
    
    var body: some View {
        Form {
            TextField("Movie title", text: $movie.title)
            
            DatePicker("Release date", selection: $movie.releaseDate, displayedComponents: .date)
        }
        .navigationTitle(isNew ? "New Movie" : "Movie")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            if isNew {
                
                
                ToolbarItem(placement:.confirmationAction){
                    Button("Save"){
                        dismiss()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel"){
                        context.delete(movie)
                        dismiss()
                    }
                }
            }
        }

    }
}

#Preview {
    MovieDetail(movie: SampleData.shared.movie)
}

#Preview("New Movie") {
    NavigationStack {
        MovieDetail(movie: SampleData.shared.movie, isNew: true)
    }
}