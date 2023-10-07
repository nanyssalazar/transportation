//
//  BusView.swift
//  Trenes
//
//  Created by -a.s  on 06/10/23.
//

import SwiftUI

struct BusView: View {
    var body: some View {
        ScrollView() {
            VStack(){
                TrainCardView(name: "Transpais", color: Color.green,icon: "bus")
                TrainCardView(name: "ADO", color: Color.blue,icon: "bus")
                TrainCardView(name: "ETN", color: Color.purple, icon: "bus")
                TrainCardView(name: "Omnibus", color: Color.yellow,icon: "bus")
            }
            
        }
    }
}

struct BusView_Previews: PreviewProvider {
    static var previews: some View {
        BusView()
    }
}
