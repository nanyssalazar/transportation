//
//  MeansOfTransport.swift
//  Trenes
//
//  Created by -a.s  on 25/09/23.
//

import SwiftUI

struct MeansOfTransport: View {
    var name : String
    var icon : String
    // si queremos que el efecto sea compartido entre todas las tarjetas
    @Binding var isPressed : Bool
    
    var body: some View {
        Label (name, systemImage: icon)
            /*.onTapGesture {
               // donde es el cambio de variable es donde va la animacion
                withAnimation(){
                    self.isPressed.toggle()
                }
            }*/
            .scaleEffect(isPressed ? 1.5 : 1.0)
            .rotationEffect(isPressed ? .degrees(180) : .degrees(0))
            .modifier(CardViewModifier())
        }
    }

struct MeansOfTransport_Previews: PreviewProvider {
    static var previews: some View {
        // para usar el binging ocupamos pasar asi el parametro de isPressed
        MeansOfTransport(name: "Barco", icon: "ferry", isPressed: .constant(false))
    }
}
