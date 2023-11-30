import SwiftUI
struct chatsC: View {
    let nombre: String
    let mensaje: String
    let simbolo: String
    let hora: String
    let visto: Bool
    
    // add all parameters in the init
    init(nombre: String, mensaje: String, simbolo: String, hora: String, visto: Bool) {
        self.nombre = nombre
        self.mensaje = mensaje
        self.simbolo = simbolo
        self.hora = hora
        self.visto = visto
    }
    
    var body: some View {
        let vistoAux = (visto ? "checkmark.seal.fill":"checkmark.seal")
        ZStack{
            //Fondo
            Rectangle()
                .foregroundColor(.white)
                .frame(width: .infinity, height: 100)
            HStack{
                //Imagen
                Image(systemName: simbolo)
                    .font(.system(size: 56))
                //Mensaje
                VStack(alignment: .leading){
                    Text(nombre)
                        .font(.system(size: 22))
                        .bold()
                    HStack{
                        Image(systemName: vistoAux)
                        Text(mensaje)
                    }
                }
                Spacer()
                Text(hora)
                    .padding(.top, -20)
                Spacer()
                //Hora
            }
        }
    }
}
   

struct chatsC_Previews: PreviewProvider {
    static var previews: some View {
        chatsC(nombre: "Fernanda", mensaje: "Enviar un Saludo", simbolo: "person.circle", hora: "19:44", visto: false)
    }
}
