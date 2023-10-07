//
//  BoatView.swift
//  Trenes
//
//  Created by -a.s  on 06/10/23.
//

import SwiftUI

struct BoatView: View {
    var body: some View {
        ScrollView() {
            VStack(){
                TrainCardView(name: "Straw Hats", color: Color.green,icon: "ferry.fill")
                TrainCardView(name: "Heart", color: Color.blue,icon: "ferry.fill")
                TrainCardView(name: "Beast", color: Color.purple, icon: "ferry.fill")
                TrainCardView(name: "Firetank", color: Color.yellow,icon: "ferry.fill")
            }
            
        }    }
}

struct BoatView_Previews: PreviewProvider {
    static var previews: some View {
        BoatView()
    }
}
