//
//  TabBarView.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct TabBarView<Content: View>: View {
    @Binding var selectedIndex: Int
    @ViewBuilder let content: (Int) -> Content
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedIndex) {
                content(selectedIndex)
            }
            
            VStack {
                Spacer()
                TabBar(selectedIndex: $selectedIndex)
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedIndex: .constant(1)) { index in HomeScreen()}
    }
}
