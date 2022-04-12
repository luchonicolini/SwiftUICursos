//
//  AccountView.swift
//  AccountView
//
//  Created by Luciano Nicolini on 12/04/2022.
//

import SwiftUI

struct AccountViewDemo: View {
    @State var isDeleted = false
    @State var isPinned = false
    
    var body: some View {
        NavigationView {
            List {
                //PART1
                profile
                //PART2
                Menu
                //PART3
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Perfil")
        }
    }
    
    var profile: some View {
        VStack(spacing: 8) {
            Image(systemName: "person.crop")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue,.blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
            //background blue
                .background(
                    Image(systemName: "hexagon")
                        .symbolVariant(.fill)
                        .foregroundColor(.blue)
                        .font(.system(size: 200))
                        .offset(x: -50, y: -100)
                )
            Text("luchonic")
                .font(.title.weight(.semibold))
            HStack {
                Image(systemName: "location")
                    .imageScale(.large)
                Text("Argentina")
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    
    var Menu: some View {
        Section {
            //Nav1
            NavigationLink(destination: ContentView()) {
                Label("Configuracion", systemImage: "gear")
            }
            //Nav2
            NavigationLink { Text("hola mundo")} label: {
                Label("Configuracion", systemImage: "gear")
            }
            //Nav3
            NavigationLink(destination: ContentView()) {
                Label("Configuracion", systemImage: "gear")
            }
        }
        //config List
        .accentColor(.primary)
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
    }
    
    var links: some View {
        //Link PageWeb
        Section {
            if isDeleted == false {
                Link(destination: URL(string: "https://www.mercadolibre.com.ar/")!) {
                    HStack {
                        Label("WebSite",systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.black)
                    }
                }
                //Swipe
                .swipeActions(edge: .leading, allowsFullSwipe: true) {
                    Button(action: {isDeleted = true}) {
                        Label("Delete",systemImage: "trash")
                        
                    }
                    .tint(.red)
                    Button { isPinned.toggle()} label: {
                        Label("Pin",systemImage: "pin")
                        if isPinned {
                            Label("Unpin", systemImage: "pin.slash")
                        } else {
                            Label("Pin",systemImage: "pin")
                        }
                    }
                    .tint(isPinned ? .gray : .yellow)
                }
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    
}

struct AccountViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        AccountViewDemo()
    }
}
