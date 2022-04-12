//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 12/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Vista")
            Text("Vista previa luchonic")
                .font(.largeTitle)
                .bold()
        } 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
