//
//  ItemModel.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import Foundation

struct ItemModel : Identifiable {
    let id: String = UUID().uuidString
    let title : String
    let isCompleted : Bool
}
