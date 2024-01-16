//
//  PlayerHand.swift
//  BlackjackAndHookers
//
//  Created by student on 15/01/2024.
//

import SwiftUI

struct PlayerHand: View {
    @ObservedObject
    var viewmodel:BlackjackGameViewModel
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 90),spacing: -50)]){
            ForEach(viewmodel.model.user
                .hand){card in
                CardView(image_name:card.image)
                    .transition(.offset(x:100,y:0))
            }
        }
    }
}


#Preview {
    PlayerHand(viewmodel:BlackjackGameViewModel())
}
