//
//  ThreadsTabView.swift
//  ThreadsTutorial
//
//  Created by Milos on 19. 8. 2023..
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTab = 0
    @State private var showCreateThreadView = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            Text("")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            
            ActivityView()
                .tabItem {
                    Image(systemName: "heart")
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
                .onAppear { selectedTab = 4 }
                .tag(4)
            
        }
        .onChange(of: selectedTab, perform: { _ in
            showCreateThreadView = selectedTab == 2
        })
        // Also I need to call "dismiss" in CreateThreadView if I want to cancel the view
        .sheet(isPresented: $showCreateThreadView, onDismiss: {
            selectedTab = 0
        }, content: {
            CreateThreadView()
        })
        .tint(.black)
    }
}

struct ThreadsTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadsTabView()
    }
}
