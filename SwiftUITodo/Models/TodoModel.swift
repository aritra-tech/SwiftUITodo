//
//  TodoModel.swift
//  SwiftUITodo
//
//  Created by Aritra on 03/11/23.
//

import Foundation

struct TodoModel: Identifiable, Codable {
    
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString ,title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> TodoModel {
        return TodoModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
