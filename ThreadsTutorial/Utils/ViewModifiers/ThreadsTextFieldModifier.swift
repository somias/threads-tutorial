//
//  ThreadsTextFieldModifier.swift
//  ThreadsTutorial
//
//  Created by Milos on 19. 8. 2023..
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
