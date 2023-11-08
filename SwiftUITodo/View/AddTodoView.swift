//
//  AddTodoView.swift
//  SwiftUITodo
//
//  Created by Aritra on 03/11/23.
//

import SwiftUI

struct AddTodoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todoListViewModel: TodoListViewModel

    @State var text: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type here...", text: $text)
                    .cornerRadius(10)
                    .frame(height: 55)
                    .padding(.horizontal)
                    .background(Color(UIColor.secondarySystemBackground))
                
                Button(action: onSave, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add a Todo ✏️")
    }
    
    func onSave(){
        todoListViewModel.addTodo(title: text)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView {
        AddTodoView()
    }
    .environmentObject(TodoListViewModel())

}
