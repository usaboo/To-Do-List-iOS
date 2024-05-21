//
//  ListView.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import SwiftUI

struct ListView : View {
    @EnvironmentObject var listViewModel : ListViewModel
    var body: some View{
        List{
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
            }.onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            
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
}

struct ListViewPreviews : PreviewProvider {
    static var previews: some View{
        NavigationStack{
            ListView()
        }.environmentObject(ListViewModel())
    }
}

