//
//  LoginViewModel.swift
//  ThreadsTutorial
//
//  Created by Milos on 22. 8. 2023..
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
