//
//  LoandingView.swift
//  ClimaDemo (iOS)
//
//  Created by Luciano Nicolini on 06/04/2022.
//

import SwiftUI

struct LoandingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .green)) //color
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct LoandingView_Previews: PreviewProvider {
    static var previews: some View {
        LoandingView()
    }
}
