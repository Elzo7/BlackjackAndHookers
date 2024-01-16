//
//  DealerHand.swift
//  BlackjackAndHookers
//
//  Created by student on 16/01/2024.
//

import SwiftUI

struct DealerHand: View {
    @ObservedObject
    var viewmodel: BlackjackGameViewModel
    var body: some View {
        ZStack(){
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 90),spacing: -50)]){
                ForEach(viewmodel.model.dealer
                    .hand){card in
                        if(viewmodel.model.dealer.hand[1] == card && viewmodel.gameEnded == false)
                        {
                            ZStack(){
                                CardView(image_name:card.image)
                                    .transition(.offset(x:100,y:0))
                                CardView(image_name:"card_back")
                                    .transition(.offset(x:100,y:0))
                                .opacity(viewmodel.gameEnded ? 0 : 1)                        }
                            .rotation3DEffect(
                                .degrees(viewmodel.gameEnded ? 0 : 180),
                                axis: (x:0,y:0,z:0)
                            )
                            .animation(.default, value: viewmodel.gameEnded)
                        }
                        else
                        {
                            CardView(image_name:card.image)
                                .transition(.offset(x:100,y:0))
                                                    }
                    }
            }
        }.offset(x:30)
        
    }
}

#Preview {
    DealerHand(viewmodel: BlackjackGameViewModel())
}
