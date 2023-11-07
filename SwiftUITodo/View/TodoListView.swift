//
//  TodoListView.swift
//  SwiftUITodo
//
//  Created by Aritra on 31/10/23.
//

import SwiftUI

struct TodoListView: View {
    
    @EnvironmentObject var todoListViewModel: TodoListViewModel
    
    var body: some View {
        ZStack {
            if todoListViewModel.todos.isEmpty {
                NoItemView()
            } else {
                List {
                    ForEach(todoListViewModel.todos) { todo in
                        ListRowView(todo: todo)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    todoListViewModel.updateTodo(todo: todo)
                                }
                            }
                    }
                    .onDelete(perform: todoListViewModel.deleteTodo)
                    .onMove(perform: todoListViewModel.moveTodo)
                }
                .listStyle(PlainListStyle())
            }
        }
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
    .environmentObject(TodoListViewModel())
}

