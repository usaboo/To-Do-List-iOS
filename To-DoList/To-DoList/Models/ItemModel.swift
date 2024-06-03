//
//  ItemModel.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import Foundation

struct ItemModel : Identifiable {
    let id: String
    let title : String
    var isCompleted : Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion()->ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
