//
//  ListRowView.swift
//  SwiftUITodo
//
//  Created by Aritra on 31/10/23.
//

import SwiftUI

struct ListRowView: View {
    
    let todo: TodoModel
    
    var body: some View {
        HStack {
            Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(todo.isCompleted ? .green : .red)
            Text(todo.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}
