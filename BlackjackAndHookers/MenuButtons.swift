//
//  MenuButtons.swift
//  BlackjackAndHookers
//
//  Created by student on 14/01/2024.
//

import SwiftUI

struct MenuButtons: View {
    @ObservedObject
    var viewmodel:BlackjackGameViewModel
    var body: some View {
        HStack{
            Button(action:{viewmodel.hit()},label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 150,height: 75)
                        .foregroundStyle(.orange)
                        
                    Text("HIT")
                        .font(.title)
                        .fontWeight(.bold).foregroundStyle(.white)
                }
            }).padding()
            Spacer()
            Button(action:{ viewmodel.stand()}, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 150,height: 75)
                        .foregroundStyle(.orange)
                    Text("STAND")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                   
                }
            }).padding()
        }
    }
}

#Preview {
    MenuButtons(viewmodel: BlackjackGameViewModel())
}
