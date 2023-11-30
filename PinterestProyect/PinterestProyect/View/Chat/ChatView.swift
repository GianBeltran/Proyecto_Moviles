import SwiftUI
struct ChatView: View {
    @State var busqueda=""
    var body: some View {
        NavigationView{
            ScrollView{
                //Busqueda
                VStack{
                    HStack{
                        Image(systemName:"magnifyingglass")
                        TextField("Buscar", text: $busqueda)
                    }
                    .frame(width: 300)
                    HStack{
                        Image(systemName:"message.fill")
                        Button("Mensaje Nuevo",action:{})
                    }
                    .frame(width: 300)
                }
                //Chats
                ForEach(0...5,id:\.self){ index in
                    NavigationLink(destination: {
                        chatsC(nombre: "Fernanda", mensaje: "Envia un Saludo", simbolo: "person.circle.fill", hora: "19:44", visto: false)
                    }, label: {
                        chatsC(nombre: "Fernanda", mensaje: "Envia un Saludo", simbolo: "person.circle.fill", hora: "19:44", visto: false)
                    }).buttonStyle(PlainButtonStyle())
                }
                .padding(.top,8)
            }//End Scrollview
            //.navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
               //share logo
                ToolbarItem(placement:.navigationBarTrailing){
                    Image(systemName: "camera")
                }
                ToolbarItem(placement:.navigationBarTrailing){
                    Image(systemName: "plus.message")
                }
            }
            
        }//End NavigationView
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
