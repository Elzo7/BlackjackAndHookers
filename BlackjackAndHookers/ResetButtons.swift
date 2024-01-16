//
//  ResetButtons.swift
//  BlackjackAndHookers
//
//  Created by student on 16/01/2024.
//

import SwiftUI

struct ResetButtons: View {
    @ObservedObject
    var viewmodel: BlackjackGameViewModel
    var body: some View {
        VStack(){
            Text(viewmodel.result)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white
                )
            Button(action: {viewmodel.reset()}, label:{ ZStack(){
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 300,height: 75)
                    .foregroundStyle(.orange)
                Text("RESET GAME")
                    .font(.title)
                    .fontWeight(.bold)
                .foregroundStyle(.white)            }
            })
        }
    }
}

#Preview {
    ResetButtons(viewmodel: BlackjackGameViewModel())
}
