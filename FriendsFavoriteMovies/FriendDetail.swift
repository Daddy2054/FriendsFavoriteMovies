//
//  FriendDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Jean on 20/10/24.
//

import SwiftUI

struct FriendDetail: View {
    @Bindable var friend: Friend
    let isNew : Bool
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext)  private var context
    
    init(friend: Friend, isNew: Bool = false) {
        self.friend = friend
        self.isNew = isNew
    }
    var body: some View {
        Form {
            TextField("Name", text:  $friend.name)
                .autocorrectionDisabled()
        }
        .navigationTitle(isNew ? "New Friend" :"Friend")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            if isNew {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
    dismiss()
                }
            }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FriendDetail(
            friend: SampleData.shared.friend
        )
    }
}
#Preview("New Friend") {
    NavigationStack {
        FriendDetail(friend: SampleData.shared.friend, isNew: true)
    }
}