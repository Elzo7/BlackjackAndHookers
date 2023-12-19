//
//  CardView.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct CardView: View {
    var card: BlackjackGameModel.Card
    var body: some View {
       
        ZStack{
            let cardBack = Rectangle()
            Group
            {
                cardBack
                    .fill(.white)
                    .stroke(card.suit == "w" || card.suit == "z" ? .black : .red)
                    .frame(width: 115,height: 158)
                Text(card.inside).font(.system(size: 200)).foregroundColor(card.suit == "w" || card.suit == "z" ? .black : .red).offset(CGSize(width: 0, height: -19))
            }.opacity(1)
            Group{
                cardBack.fill(.red)
                    .frame(width: 115,height:158)
                Text("🂠").font(.system(size: 200)).foregroundColor(.white)
                    .offset(CGSize(width: 0, height: -19))
            }.opacity(0)
        }
    }
}

#Preview {
    CardView(card: BlackjackGameModel.Card(id: "7w", value: "7",suit: "w",inside: "🃑"))
}
