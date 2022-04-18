//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 18/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("dos")
                    .resizable()
                    .ignoresSafeArea()
                
                TabView {
                    SampleTabView(card: Cards[0])
                    SampleTabView(card: Cards[1])
                    SampleTabView(card: Cards[2])
                    
                }
                .tabViewStyle(.page)

            }
            .navigationTitle("Peliculas")
        }
    }
}

struct SampleTabView: View {
    var card: Card
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(card.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 220)
           
            Text(card.tilte)
                .font(.title)
                .fontWeight(.bold)
          
            HStack {
                Text(card.subtitule)
                    .font(.callout)
                
            }
            
        }
        .frame(height: 350)
        .padding(.horizontal,24)
        .background(
            RoundedRectangle(cornerRadius: 30, style: .continuous).fill(.ultraThinMaterial)
        )
        .padding(.horizontal,0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //backround black
            .preferredColorScheme(.dark)
    }
}
