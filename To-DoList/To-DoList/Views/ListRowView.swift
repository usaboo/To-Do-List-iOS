//
//  ListRowView.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import SwiftUI

struct ListRowView: View {
    let title : String
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}


#Preview {
    ListRowView(title: "This is the first title")
}
