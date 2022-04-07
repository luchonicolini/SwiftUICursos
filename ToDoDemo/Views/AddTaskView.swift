//
//  AddTasj.swift
//  ToDoDemo (iOS)
//
//  Created by Luciano Nicolini on 06/04/2022.
//

import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var realmManager: RealmManager
  
    var body: some View {
        VStack(alignment: .leading) {
            Text("Create a new task")
                .font(.title2).bold()
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField(
                   "Enter your task here",
                   text: $title
               )
            .textFieldStyle(.roundedBorder)
            
            //boton
            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.328, saturation: 0.796, brightness: 0.408))
                    .cornerRadius(30)
            }
            
            Spacer()
        }
        .padding(.top,40)
        .padding(.horizontal)
        .background(Color(red: 0.122, green: 0.121, blue: 0.275))
        
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
