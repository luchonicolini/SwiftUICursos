//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 14/04/2022.
//

import SwiftUI

struct ContentView: View {  
    @AppStorage("selectedTab") var selectionTab: Tab = .home
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack(alignment: .bottom) {
            //TabViewSelection
                switch selectionTab {
                case .home:
                    HomeView()
                case .explore:
                    AccountView()
                case .library:
                    AccountView()
                }
            TabBar()
                .offset(y: model.showDetail ? 200: 0)
        }
        
    //safeAreaInsert barra de navegacion
        .safeAreaInset(edge: .bottom, spacing: 0) {
            Color.clear.frame(height: 44)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
