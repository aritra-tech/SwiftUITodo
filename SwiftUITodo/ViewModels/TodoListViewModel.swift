//
//  TodoListViewModel.swift
//  SwiftUITodo
//
//  Created by Aritra on 04/11/23.
//

import Foundation

class TodoListViewModel: ObservableObject {
    
    @Published var todos: [TodoModel] = [] {
        didSet {
            saveTodo()
        }
    }
    
    let itemKey: String = "item_list"
    
    init() {
        
        getTodo()
    }
    
    func getTodo() {
            
        guard
            let data = UserDefaults.standard.data(forKey: itemKey),
            let savedTodo = try? JSONDecoder().decode([TodoModel].self, from: data)
        else { return }
        
        self.todos = savedTodo
        
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
    
    func saveTodo(){
        
        if let encodedData = try? JSONEncoder().encode(todos) {
            UserDefaults.standard.set(encodedData, forKey: itemKey)
        }
    }
}
