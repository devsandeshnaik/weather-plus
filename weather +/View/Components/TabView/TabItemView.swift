//
//  TabItemView.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct TabItemView: View {
    var tabItem: TabItems
    var isSelected: Bool
    var body: some View {
        Image(systemName: tabItem.systemImageName)
            .resizable()
            .scaledToFit()
            .frame(width: 24, height: 24)
            .foregroundColor(isSelected ? .tabIconSelected : .tabIconNonSelected)
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(tabItem: .home, isSelected: true)
    }
}
