//
//  NoItemView.swift
//  SwiftUITodo
//
//  Created by Aritra on 07/11/23.
//

import SwiftUI

struct NoItemView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                Text("There are no todos!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                Text("Click on the Add Button to add your todo's")
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
    }
}

#Preview {
    NavigationView {
        NoItemView()
            .navigationTitle("Title")
    }
}
