import SwiftUI

struct ListRowView: View {
    let todo: TodoModel
    
    var body: some View {
        HStack {
            Text(todo.title)
                .lineLimit(1)
            
            Spacer()
            
            Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(todo.isCompleted ? .green : .red)
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}
