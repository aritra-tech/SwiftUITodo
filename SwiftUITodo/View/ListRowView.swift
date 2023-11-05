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
            Text(todo.title)
            
            Spacer()
            
            Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(todo.isCompleted ? .green : .red)
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}
