//
//  CircularProfileImageView.swift
//  ThreadsTutorial
//
//  Created by Milos on 21. 8. 2023..
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("max-verstappen")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
