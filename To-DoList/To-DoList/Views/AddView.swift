//
//  AddView.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText : String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type Something here", text: $textFieldText)
                    .padding()
                    .frame(height: 55)
                    .background(Color(.gray).opacity(0.25))
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 20)))
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height : 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 20)))
                })
            }.padding()
        }.navigationTitle("Add an Item 🖊️")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
   
}
