//
//  PlaneView.swift
//  Trenes
//
//  Created by -a.s  on 06/10/23.
//

import SwiftUI

struct PlaneView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView() {
            VStack(){
                TrainCardView(name: "Aeromexico", color: Color.green,icon: "airplane")
                TrainCardView(name: "Viva Aerobus", color: Color.blue,icon: "airplane")
                TrainCardView(name: "Tren bala Kodama", color: Color.purple, icon: "airplane")
                TrainCardView(name: "Volaris", color: Color.yellow,icon: "airplane")
            }
            
        }
    }
}

struct PlaneView_Previews: PreviewProvider {
    static var previews: some View {
        PlaneView()
    }
}
