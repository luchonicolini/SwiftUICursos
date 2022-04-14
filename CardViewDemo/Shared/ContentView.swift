//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 11/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Spacer()
            Image("turtlerock_feature")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:300,height:250)
                .cornerRadius(10.0)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                
            Text("Hotel Metropol ")
                .font(.largeTitle)
                .fontWeight(.bold)
            //.primary,.primary.opacity(0.5)
                .foregroundStyle(.linearGradient(colors: [.orange,.red], startPoint: .topLeading, endPoint: .bottomTrailing))
            
          
            Text("Mar del plata".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                
        }
        .padding(.all,20.0)
        .padding(.vertical,20)
        .frame(height: 350.0)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        //.cornerRadius(30.0)
        //.mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
        //borde lineas blancas
        .overlay(
            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(0.3),.black.opacity(0.1)], startPoint: .top, endPoint: .bottom))
                .blendMode(.overlay)
        )
        
        .shadow(color: .primary.opacity(0.3), radius: 10, x: 0, y: 10)
        //modificador -> carpeta stylos
        .strokeStyle()
        .padding(.horizontal,20)
        //.offset(x: 250, y: -100)
        .background(Image("Blob 1"))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
