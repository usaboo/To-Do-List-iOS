import SwiftUI

struct state: View {
    @State var number = 0
    var body: some View {
        NavigationView{
            VStack{
                Text("Number \(self.number)")
                Button("Change Number"){
                    self.number = Int.random(in: 0...100)
                }
            }
            .navigationBarItems(trailing: NavigationLink(destination: binding(value: self.$number)){
                Text("Binding Example")}
            )
        }
    }
}

struct binding: View {
    @Binding var value:Int
    var body: some View {
        Text("Binding Value \(self.value)")
        Button("change number"){
            self.value = Int.random(in: 0...10000)
        }
    }
}

struct state_Previews: PreviewProvider {
    static var previews: some View {
        state()
    }
}
