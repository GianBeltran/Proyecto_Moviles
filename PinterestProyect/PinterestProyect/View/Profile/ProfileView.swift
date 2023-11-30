import SwiftUI

struct ProfileView: View {
    /*let columns = [
     GridItem(.flexible(), spacing: 1),
     GridItem(.flexible(), spacing: 1),
     GridItem(.flexible(), spacing: 1)
     ]*/
    @State var busqueda=""
    var body: some View {
        
        VStack{
            //Header
            VStack{
                //Pic and Stats
                VStack{
                    CircleImageView(image: "perfil", width: 100, height: 100)
                    Text("Jesus Maria")
                        .fontWeight(.semibold)
                        .font(.title2)
                    Text("@jesusmaria")
                        .font(.footnote)
                        .padding(.bottom, 10)
                        .foregroundColor(.gray)
                       
                    HStack{
                        UserStatsView(value: "5", name: "Followers")
                        UserStatsView(value: "7", name: "Following")
                    }
                    .padding(.bottom, 12)
                }//end HStack
                //Button
                Button {
                    
                } label: {
                    Text("Edit Perfil")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .frame(width: 360,height: 32)
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray,lineWidth: 1))
            
                }
                .padding(.bottom, 12)
                
                HStack{
                    Text("Pines")
                        .font(.subheadline)
                        .font(.title2)
                }
            }//End VStack header
            
            .padding(.horizontal)
            VStack{
                HStack{
                    Image(systemName:"magnifyingglass")
                    TextField("Buscar en tus Pines", text: $busqueda)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        
                    Image(systemName:"square.grid.3x2.fill")
                    Image(systemName: "plus")
                    
                    }
                .padding()
                    
                
            
                    HStack{
                        Image(systemName:"star")
                        Button("Favoritos",action:{})
                        Spacer()
                        Image(systemName:"checkmark.seal")
                        Button("Creados por ti",action:{})
                        Spacer()
                        
                    }
                    .frame(width: 300)
                }
                
                ScrollView(showsIndicators: false){
                    HStack(alignment: .top, spacing: 5){
                        VStack{
                            ForEach(ImagenModel2.images.prefix(ImagenModel2.images.count / 2), id: \.id){ image in
                                Image(image.name)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .frame(minHeight: CGFloat.random(in: 130 ... 400))
                                    .cornerRadius(10)
                            }
                        }
                        
                        VStack{
                            ForEach(ImagenModel2.images.suffix(ImagenModel2.images.count / 2), id: \.id){ image in
                                Image(image.name)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .frame(height: CGFloat.random(in: 130 ... 400))
                                    .cornerRadius(10)
                            }
                        }
                        
                        VStack{
                            ForEach(ImagenModel2.images.suffix(ImagenModel2.images.count / 2), id: \.id){ image in
                                Image(image.name)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .frame(height: CGFloat.random(in: 130 ... 400))
                                    .cornerRadius(10)
                            }
                        }
                    } // End HStack
                    .padding(5)
                }// End ScrollView
            }//End main VStack
        }
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }

