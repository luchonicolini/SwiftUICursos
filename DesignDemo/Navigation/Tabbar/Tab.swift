//
//  Tab.swift
//  CardViewDemo (iOS)
//
//  Created by Luciano Nicolini on 13/04/2022.
//

import Foundation
import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
    
}

var tabItems = [
    TabItem(text: "Home", icon: "house", tab: .home, color: .orange),
    TabItem(text: "Explore", icon: "bell", tab: .explore, color: .pink),
    TabItem(text: "Beneficios", icon: "rectangle.stack", tab: .library, color: .blue)
]

enum Tab: String {
    case home
    case explore
    case library
}

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
