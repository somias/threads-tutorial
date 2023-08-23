//
//  PreviewProvider.swift
//  ThreadsTutorial
//
//  Created by Milos on 23. 8. 2023..
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: UUID().uuidString, fullname: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen")
}
