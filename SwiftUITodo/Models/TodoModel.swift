//
//  TodoModel.swift
//  SwiftUITodo
//
//  Created by Aritra on 03/11/23.
//

import Foundation

struct TodoModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
