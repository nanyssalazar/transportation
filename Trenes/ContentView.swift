//
//  ContentView.swift
//  Trenes
//
//  Created by -a.s  on 18/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var isPressed : Bool = false
    @State var country : String = ""
    
    private func printHola() -> String {
        if self.isPressed {
            return "Presionado"
        }else {
            return "No presionado"
        }
        
    }
    var body: some View {
        NavigationView{
            VStack {
                TextField("A donde quieres viajar?", text: $country)
                    .padding(.horizontal)
                
                Text("Viajaras a: \(self.country)")
                Text("is Pressed: \(printHola())")
                ScrollView(.horizontal){

                HStack {
                        
                        NavigationLink(destination: PlaneView(), label: {
                            MeansOfTransport(name: "Plane", icon: "airplane",  isPressed: $isPressed)
                        })
                            NavigationLink(destination: BoatView(), label: {
                                MeansOfTransport(name: "Barco", icon: "ferry", isPressed: $isPressed)
                            })
                        NavigationLink(destination: BusView(), label: {
                            MeansOfTransport(name: "Bus", icon: "bus",  isPressed: $isPressed)
                        })
                        
                    }
                    
                }
                
                
            
                ScrollView() {
                    VStack(){
                        TrainCardView(name: "Tren Bala Nozomi", color: Color.green,icon: "tram.circle.fill")
                        TrainCardView(name: "Tren bala Hikari", color: Color.blue,icon: "tram.circle.fill")
                        TrainCardView(name: "Tren bala Kodama", color: Color.purple, icon: "tram.circle.fill")
                        TrainCardView(name: "Tren bala Kodama", color: Color.yellow,icon: "tram.circle.fill")
                    }
                    
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
