//
//  ListView.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import SwiftUI

struct ListView : View {
    @State var items : [String] = [
        "This is the first title", "This is the second title","This is the third title"
    ]
    var body: some View{
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }.listStyle(PlainListStyle())
            
        }.navigationTitle("To-Do List ☑️")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton().bold()
                }
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink("Add", destination: AddView())
                }
            }

    }
}

struct ListViewPreviews : PreviewProvider {
    static var previews: some View{
        NavigationStack{
            ListView()
        }
    }
}

