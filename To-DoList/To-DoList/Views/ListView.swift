//
//  ListView.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import SwiftUI

struct ListView : View {
    var body: some View{
        List{
            ListRowView(title :"This is the first title")
        }.navigationTitle("To-Do List ☑️")
    }
}

struct ListViewPreviews : PreviewProvider {
    static var previews: some View{
        NavigationStack{
            ListView()
        }
    }
}

