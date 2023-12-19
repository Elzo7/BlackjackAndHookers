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
            Text("Dealer").font(.title)
            Spacer()
            HStack {
                CardView(card: BlackjackGameModel.Card(id: "1", value: "2", suit: "c", inside: "🂲"))        }
            .padding()
            Spacer()
            Text("Player").font(.title)
        }
        
    }
}

#Preview {
    ContentView(viewmodel: BlackjackGameViewModel())
}
