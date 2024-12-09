//
//  To_DoListApp.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import SwiftUI

@main
struct To_DoListApp: App {
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }.environmentObject(listViewModel)
        }
    }
}
