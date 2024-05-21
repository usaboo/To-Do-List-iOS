//
//  ListViewModel.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import Foundation

class ListViewModel {
    @Published var items : [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems(){
        items = [
            ItemModel(title: "This is the first title", isCompleted: false),
            ItemModel(title: "This is the second title", isCompleted: true),
            ItemModel(title: "This is the third title", isCompleted: false )
        ]
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to : Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}
