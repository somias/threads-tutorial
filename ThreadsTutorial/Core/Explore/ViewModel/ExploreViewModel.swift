//
//  ExploreViewModel.swift
//  ThreadsTutorial
//
//  Created by Milos on 23. 8. 2023..
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users: [User] = []
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    private func fetchAllUsers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
