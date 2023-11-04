//
//  TodoListViewModel.swift
//  SwiftUITodo
//
//  Created by Aritra on 04/11/23.
//

import Foundation

class TodoListViewModel: ObservableObject {
    
    @Published var todos: [TodoModel] = []
    
    init() {
        getTodo()
    }
    
    func getTodo() {
        let newTodo = [
            TodoModel(title: "First title", isCompleted: true),
            TodoModel(title: "First title", isCompleted: false),
            TodoModel(title: "Third", isCompleted: false)
        ]
        todos.append(contentsOf: newTodo)
    }
    
    
    func deleteTodo(indexSet: IndexSet) {
        todos.remove(atOffsets: indexSet)
    }
    
    func moveTodo(from: IndexSet, to: Int) {
        todos.move(fromOffsets: from, toOffset: to)
    }
    
    func addTodo(title: String) {
        let newTodo = TodoModel(title: title, isCompleted: false)
        todos.append(newTodo)
    }
    
    func updateTodo(todo: TodoModel) {
        if let index = todos.firstIndex(where: { $0.id == todo.id}) {
            todos[index] = todo.updateCompletion()
        }
    }
}
