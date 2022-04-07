//
//  SmallAddButton.swift
//  ToDoDemo (iOS)
//
//  Created by Luciano Nicolini on 06/04/2022.
//

import Foundation
import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50)
                .foregroundColor(Color.white)

            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.black)
        }
        .frame(height: 50)
    }
}
