import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State var caption = ""
    @State var isPresented = false
    @State var selection:PhotosPickerItem?
    
    var body: some View {
        VStack {
            //Action buttons
            HStack {
                Button {
                    
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                Text("New Pin")
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }
            .padding()
            
            //Pic and caption
            HStack(spacing:8) {
                Image("perfil")
                    .resizable()
                    .frame(width: 100, height: 100)
                TextField("Descripcion",text:$caption,axis: .vertical)
                
            }
            .padding()
            Spacer()
            
        }//End VStack
        .onAppear{
            isPresented.toggle()
        }
        .photosPicker(isPresented: $isPresented, selection: $selection)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
