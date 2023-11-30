

import SwiftUI

struct AuthHeaderView: View {

    let title1: String
    let title2: String

   var body: some View {
        VStack(alignment: .leading){
            HStack{
                Spacer()

            }

            

            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)

           Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)

        }//End Vstack

        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemRed))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))

    }
}
