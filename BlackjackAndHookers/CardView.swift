//
//  CardView.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct CardView: View {
    var isPressed = false
    var body: some View {
        /*ZStack{
            Text("🂠").font(.system(size: 200)).foregroundStyle(.red)
            Text("🃗").font(.system(size: 200)).opacity(0)
        }*/
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .stroke(Color.black)
                .frame(width: 128,height: 198)
        }
    }
}

#Preview {
    CardView()
}
