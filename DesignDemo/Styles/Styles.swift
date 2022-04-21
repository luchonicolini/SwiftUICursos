//
//  Styles.swift
//  CardViewDemo (iOS)
//
//  Created by Luciano Nicolini on 11/04/2022.
//

import SwiftUI

struct StrokeStyle: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(colorScheme == .dark ? 0.6 : 0.3),.black.opacity(colorScheme == .dark ? 0.3 : 0.1)], startPoint: .top, endPoint: .bottom))
            
                .blendMode(.overlay)
        )
    }
}

extension View {
    func strokeStyle() -> some View {
        modifier(StrokeStyle())
    }
}
