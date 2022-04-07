//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 06/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddTaskView = false
    @StateObject var realmManager = RealmManager()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(realmManager)
            SmallAddButton()
                    .padding()
                    .onTapGesture {
                            showAddTaskView.toggle()
                        }
            
        }
        //link boton blanco
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(red: 0.122, green: 0.121, blue: 0.275))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
