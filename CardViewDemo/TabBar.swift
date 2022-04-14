//
//  TabBar.swift
//  CardViewDemo (iOS)
//
//  Created by Luciano Nicolini on 13/04/2022.
//

import SwiftUI

struct TabBar: View {
    @State var selectionTab: Tab = .home
    @State var color: Color = .teal
    @State var tabItemWidth: CGFloat = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            //TabViewSelection
            Group {
                switch selectionTab {
                case .home:
                    ContentView()
                case .explore:
                    AccountView()
                case .library:
                    AccountView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                ForEach(tabItems) { item in
                    Button {
                        //EffecColorAnimation
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                            selectionTab = item.tab
                            color = item.color
                            
                        }
                    } label: {
                        VStack(spacing: 0) {
                            Image(systemName: item.icon)
                                .symbolVariant(.fill)
                                .font(.body.bold())
                                .frame(width: 44, height: 29)
                            Text(item.text)
                                .font(.body)
                            //.font(.caption2)
                                .lineLimit(1)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    //ColorTintTabBar
                    .foregroundStyle(selectionTab == item.tab ? .primary : .secondary)
                   // .blendMode(selectionTab == item.tab ? .overlay : .normal)
                    
                    .overlay(GeometryReader { proxy in
                        Color.clear.preference(key: TabPreferenceKey.self, value: proxy.size.width)
                    })
                    .onPreferenceChange(TabPreferenceKey.self) {
                        value in
                        tabItemWidth = value
                    }
                    
                }
            }
            
            //Custom TabBar
            .padding(.horizontal,8)
            .padding(.top,14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style:  .continuous))
            
            //backgroundEfectColor
            .background(
                HStack {
                    
                    if selectionTab == .library { Spacer() }
                    if selectionTab == .explore {
                        Spacer()
                        //Spacer()
                    }
                    //ColorFondo(color)
                    //Circle().fill(color).frame(width: tabItemWidth)
                    
                    if selectionTab == .home { Spacer() }
                    if selectionTab == .explore{
                        Spacer()
                       // Spacer()
                    }
                    
                })
            
            .padding(.horizontal,8)
            
            //Overlay
            
            .overlay(
                HStack {
                    
                    if selectionTab == .library { Spacer() }
                    if selectionTab == .explore {
                        Spacer()
                        Spacer()
                    }
                    //ColorFondo(color)
                    Rectangle().fill(color).frame(width: 28, height: 5)
                        .frame(width: 28, height: 5)
                        .cornerRadius(3)
                        //.frame(width: tabItemWidth) //139
                        .frame(width: 139)
                        .frame(maxHeight: .infinity, alignment: .top)
                    
                    
                    
                    if selectionTab == .home { Spacer() }
                    if selectionTab == .explore{
                        Spacer()
                        Spacer()
                    }
                    
                })
            
            .padding(.horizontal,8)
            
            
            
            .strokeStyle()
            .frame(maxHeight: .infinity,alignment: .bottom)
            .ignoresSafeArea()
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
