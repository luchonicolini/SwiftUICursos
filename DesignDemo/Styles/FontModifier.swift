//
//  AnimatetableFontModifier.swift
//  DesignDemo (iOS)
//
//  Created by Luciano Nicolini on 19/04/2022.
//ANIMACION FUENTE 

import SwiftUI

struct AnimatetableFontModifier: AnimatableModifier {
    var size: Double
    var weight: Font.Weight = .regular
    var desing: Font.Design = .default
    
    var animatableData: Double {
        get { size }
        set { size = newValue }
    }
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight,design: desing))
    }
}

extension View {
    func animateFont(size: Double, weight: Font.Weight = .regular, desing: Font.Design = .default) -> some View {
        self.modifier(AnimatetableFontModifier(size: size, weight: weight, desing: desing))
        
    }
}
