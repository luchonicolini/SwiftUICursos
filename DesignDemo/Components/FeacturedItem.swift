//
//  FeacturedItem.swift
//  DesignDemo (iOS)
//
//  Created by Luciano Nicolini on 18/04/2022.
//

import SwiftUI

struct FeacturedItem: View {
    var course: Course = courses[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Spacer()
            Image(course.logo)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:300,height:250)
                .cornerRadius(10.0)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
            
            Text(course.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            //.primary,.primary.opacity(0.5)
                .foregroundStyle(.linearGradient(colors: [.black,.black], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            
            Text(course.subtitle.uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            
        }
        .padding(.all,20.0)
        .padding(.vertical,20)
        .frame(height: 350.0)
        .background(.ultraThinMaterial)
        .mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
        //.cornerRadius(30.0)
        //.mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
        //borde lineas blancas
        .overlay(
            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(0.3),.black.opacity(0.1)], startPoint: .top, endPoint: .bottom))
                .blendMode(.overlay)
        )
        
        //.shadow(color: .primary.opacity(0.3), radius: 10, x: 0, y: 10)
        //modificador -> carpeta stylos
        .strokeStyle()
        .padding(.horizontal,20)
        //.offset(x: 250, y: -100)
        //.background(Image("Blob 1"))
        
    }
}

struct FeacturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeacturedItem()
    }
}
