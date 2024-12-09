//
//  AddView.swift
//  To-DoList
//
//  Created by Utkarsh Saboo on 5/19/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText : String = ""
    @EnvironmentObject var listViewModel : ListViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var alertTitle : String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type Something here", text: $textFieldText)
                    .padding()
                    .frame(height: 55)
                    .background(Color(.gray).opacity(0.25))
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 20)))
                
                Button(action: saveButtonPressed,
                       label: {
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
            .alert(isPresented: $showAlert, content: getAlert )
    }
    
    func saveButtonPressed(){
        if textIsAppropriate(){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count<3{
            alertTitle = "To-do item must be atleast 3 characters long"
            showAlert.toggle()
            return false
        }
        else{
            return true
        }
    }
    
    func getAlert()->Alert{
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView {
        AddView()
    }.environmentObject(ListViewModel())
   
}
