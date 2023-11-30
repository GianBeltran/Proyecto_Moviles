import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment (\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        
        VStack{
            AuthHeaderView(title1: "get starter", title2: "create your account ")
            
            VStack (espaciado: 40){
                CustomInputField(imageName: "envelope", placeholderText:"Email",text:$email)
                
                CustomInputField(imageName: "person", placeholderText:"Username",text:$username)
                
                CustomInputField(imageName: "person",  placeholderText: "Full name",text: $username)
                
                CustomInputField(imageName: "lock", placeholderText: "Password",isSecureField: true, text:$password)
            }
            .padding(32)
            
            Button{
                viewModel.register (withEmai1: email, password: password, fullname: fullname, username: username)
            } labe1:{
                Text("regístrese")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 34, height:50 )
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5),radius: 10, x:0 , y:0)
            Spacer()
            
            Button{
                presentationMode.wrappedValue.dismiss()
            }label: {
                HStack{
                    Text("Alredy have an account?")
                        .font(.footnote)
                    
                    Text("Signin")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom,32)
        }
        .ignoresSafeArea()
    }
    
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            SignUpView()
        }
    }
}
