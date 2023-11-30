import SwiftUI

struct chats: View {
    @State var busqueda = ""
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
                        Button("Lista Difusion",action:{})
                        Spacer()
                        Button("Nuevo Grupo",action:{})
                    }
                    .frame(width: 300)
                }
                //Chats
                
            }//End Scrollview
            //.navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                //logo de instagram
                ToolbarItem(placement:.navigationBarLeading){
                    Button("Editar", action: {})
                        .frame(width: 100, height: 32)
                }
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

struct chats_Previews: PreviewProvider {
    static var previews: some View {
        chats()
    }
}
