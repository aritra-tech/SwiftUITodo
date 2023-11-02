//
//  ListRowView.swift
//  SwiftUITodo
//
//  Created by Aritra on 31/10/23.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "First title")
}
