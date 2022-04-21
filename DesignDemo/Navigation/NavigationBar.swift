//
//  NavigationBar.swift
//  DesignDemo (iOS)
//
//  Created by Luciano Nicolini on 18/04/2022.
//

import SwiftUI

struct NavigationBar: View {
    var tilte: String = ""
    @Binding var hasScrolled: Bool
    
    
    var body: some View {
        ZStack {
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 10)
                .opacity(hasScrolled ? 1 : 0)
            
            Text(tilte)
                .animateFont(size: hasScrolled ? 22 : 34, weight: .bold)
                //.modifier(AnimatetableFontModifier(size: hasScrolled ? 22 : 34))
                //.font(.system(size: hasScrolled ? 22 : 32))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,20)
                .padding(.top,20)
                .offset(y: hasScrolled ? -4 : 0)
          
            
            HStack(spacing: 16) {
                Image(systemName: "magnifyingglass")
                    .font(.body.weight(.bold))
                    .frame(width: 36, height: 36)
                    .foregroundColor(.secondary)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 14, style: .continuous))
                .strokeStyle()
                //.strokeStyle(cornerRadius: 14)
            
            //AvatarOpcional IRIA ACA
     
            }
            .frame(maxWidth: .infinity,alignment: .trailing)
            .padding(.trailing,20)
            .padding(.top,20)
            .offset(y: hasScrolled ? -4 : 0)
        }
        .frame(height: hasScrolled ? 44 : 70)
            .frame(maxHeight: .infinity,alignment: .top)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(tilte: "Welcome", hasScrolled: .constant(false))
    }
}

struct AvatarExtra: View {
    var body: some View {
        //AvatarOpcional
        Image("")
            .resizable()
            .frame(width: 26, height: 26)
            .cornerRadius(10)
            .padding()
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
    }
}
