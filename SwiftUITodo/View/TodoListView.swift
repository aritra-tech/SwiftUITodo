//
//  TodoListView.swift
//  SwiftUITodo
//
//  Created by Aritra on 31/10/23.
//

import SwiftUI

struct TodoListView: View {
    
    @State var todos: [TodoModel] = [
        TodoModel(title: "First title", isCompleted: true),
        TodoModel(title: "First title", isCompleted: false),
        TodoModel(title: "Third", isCompleted: false)
    ]
    
    var body: some View {
        List {
            ForEach(todos) { todo in
                ListRowView(todo: todo)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo📍")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(
                "Add",
                destination: AddTodoView()
            )
        )
        
    }
}

#Preview {
    NavigationView{
        TodoListView()
    }
}

