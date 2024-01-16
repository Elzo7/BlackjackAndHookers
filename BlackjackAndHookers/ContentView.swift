//
//  ContentView.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject
    var viewmodel:BlackjackGameViewModel
    var body: some View {
        VStack{
            ZStack(){
                Image("Background")
                VStack(){
                    dealer_hand
                    menu_buttons
                    player_hand
                }
            }
        }
        
    }
    var menu_buttons:some View
    {
        ZStack {
            MenuButtons(viewmodel: viewmodel).padding().opacity(viewmodel.gameEnded ? 0:1)
            ResetButtons(viewmodel:viewmodel).padding().opacity(viewmodel.gameEnded ? 1:0)
        }
    }
    var player_hand: some View
    {   VStack()
        {
            Text("Player").font(.title).foregroundStyle(.white)
            Text("Hand Value: \(viewmodel.playerScore)")
                .foregroundStyle(.white)
            
            PlayerHand(viewmodel: viewmodel).offset(x:30)
        }
    }
    var dealer_hand: some View
    {
        VStack(){
            DealerHand(viewmodel: viewmodel)
            Text("Hand Value: \(viewmodel.dealerScore)")
                .foregroundStyle(.white
                )
            Text("Dealer").font(.title)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView(viewmodel: BlackjackGameViewModel())
}
