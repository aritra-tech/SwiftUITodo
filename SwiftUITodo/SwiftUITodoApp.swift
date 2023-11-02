//
//  SwiftUITodoApp.swift
//  SwiftUITodo
//
//  Created by Aritra on 31/10/23.
//

import SwiftUI

@main
struct SwiftUITodoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                TodoListView()
            }
        }
    }
}
