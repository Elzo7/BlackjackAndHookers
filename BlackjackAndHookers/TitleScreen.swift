//
//  TitleScreen.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct TitleScreen: View {
    var body: some View {
        VStack{
            Text("Blackjack")
                .font(.system(size: 50))
                .padding(30)
                .fontWeight(.bold)
    
            Button(action: {print("Pressed")}, label: {
                Text("Start")
                    .padding()
                    .background(Color(.blue))
                    .foregroundColor(.white)
                    .clipShape(.capsule)
                    .animation(.easeOut(duration: 0.3))
            })
        }
    }
}

#Preview {
    TitleScreen()
}
