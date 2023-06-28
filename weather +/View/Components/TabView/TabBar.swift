//
//  TabBar.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct TabBar: View {
    var tabBarItems = TabItems.allCases
    @Binding var selectedIndex: Int
    var body: some View {
        HStack {
            Spacer()
            ForEach(tabBarItems.indices) { index in
                Button {
                    selectedIndex = index
                } label: {
                    TabItemView(tabItem: tabBarItems[index],
                                isSelected: selectedIndex == index)
                }
                Spacer()
            }
        }
        .padding(.vertical)
        .background(
            Color.appBackground
        )
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selectedIndex: .constant(0))
    }
}
