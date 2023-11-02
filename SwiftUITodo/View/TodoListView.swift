//
//  TodoListView.swift
//  SwiftUITodo
//
//  Created by Aritra on 31/10/23.
//

import SwiftUI

struct TodoListView: View {
    
    @State var items: [String] = [
        "First title",
        "Second title",
        "Third title"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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

