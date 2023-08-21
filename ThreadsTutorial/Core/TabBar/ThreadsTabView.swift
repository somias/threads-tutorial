//
//  ThreadsTabView.swift
//  ThreadsTutorial
//
//  Created by Milos on 19. 8. 2023..
//

import SwiftUI

struct ThreadsTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            CreateThreadView()
                .tabItem {
                    Image(systemName: "plus")
                }
            
            ActivityView()
                .tabItem {
                    Image(systemName: "heart")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }.tint(.black)
    }
}

struct ThreadsTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadsTabView()
    }
}
