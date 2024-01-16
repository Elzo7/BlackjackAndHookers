//
//  CardView.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct CardView: View {
    var image_name:String
    var body: some View {
        Image(image_name)
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 150)
            .shadow(radius: 3,x:2,y:2)
        
    }
}

#Preview {
    CardView(image_name: "nine_trefl")
}
