//
//  ListView.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import SwiftUI

struct ListView : View {
    @State var items : [ItemModel] = [
        ItemModel(title: "This is the first title", isCompleted: false),
        ItemModel(title: "This is the second title", isCompleted: true),
        ItemModel(title: "This is the third title", isCompleted: false )
    ]
    var body: some View{
        List{
            ForEach(items ) { item in
                ListRowView(item: item)
            }.onDelete(perform: deleteItem)
                .onMove(perform: moveItem)
            
        }.listStyle(PlainListStyle())
            .navigationTitle("To-Do List ☑️")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton().bold()
                }
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink("Add", destination: AddView())
                }
            }

    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to : Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListViewPreviews : PreviewProvider {
    static var previews: some View{
        NavigationStack{
            ListView()
        }
    }
}

