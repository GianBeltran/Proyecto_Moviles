import SwiftUI
struct FeedView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
                    HStack(alignment: .top, spacing: 5){
                        VStack{
                            ForEach(ImageModel.images.prefix(ImageModel.images.count / 2), id: \.id){ image in
                                Image(image.name)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .frame(minHeight: CGFloat.random(in: 130 ... 400))
                                    .cornerRadius(10)
                            }
                        }
                        VStack{
                            ForEach(ImageModel.images.suffix(ImageModel.images.count / 2), id: \.id){ image in
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
    }
}
