import SwiftUI

struct SearchView: View {
    @State private var search:String=""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0...2,id:\.self){user in
                        HStack{
                            Image(systemName: "magnifyingglass")
                            //Name and nickname
                            VStack{
                                Text("maquillaje")
                                    .fontWeight(.semibold)
                            }
                            Spacer()
                            Image(systemName: "xmark")
                            //Alignment leading
                           
                        }//End HStack
                        .padding(.leading,10)
                        .frame(alignment: .trailing)
                    }
                }//End LazyVStack
                .searchable(text: $search,prompt: "Buscar Ideas...")
            }//End Scrollview
            .navigationTitle("Busca Ideas")
            .navigationBarTitleDisplayMode(.inline)
        }//End NavigationStack
    }
}
 
