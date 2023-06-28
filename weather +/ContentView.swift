//
//  ContentView.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTabIndex: Int = 0
    var body: some View {
        ZStack {
            
            TabBarView(selectedIndex: $currentTabIndex) { index in
                getRootView(for: index)
            }
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .prominent)
            appearance.backgroundColor = UIColor(Color.appBackground)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
    
    @ViewBuilder
    func getRootView(for index: Int) -> some View {
        switch index {
        case 0: HomeScreen()
        case 1: SearchScreen()
        case 2: FavoritesScreen()
        case 3: ProfileScreen()
        default: EmptyView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
