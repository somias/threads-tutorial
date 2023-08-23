//
//  ProfileViewModel.swift
//  ThreadsTutorial
//
//  Created by Milos on 22. 8. 2023..
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
        
        print("DEBUG: User in View Model from combine \(String(describing: currentUser))")
    }
}
