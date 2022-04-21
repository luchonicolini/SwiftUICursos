//
//  PreferenceKeys.swift
//  DesignDemo (iOS)
//
//  Created by Luciano Nicolini on 18/04/2022.
//

import Foundation
import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue nexValue: () -> CGFloat) {
        value = nexValue()
    }
}
