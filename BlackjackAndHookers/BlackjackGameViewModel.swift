//
//  BlackjackGameViewModel.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import Foundation
class BlackjackGameViewModel:ObservableObject
{
    @Published var playerScore:Int = 0
    @Published var dealerScore:Int = 0
    @Published var model = create_model()
    @Published var result:String = ""
    @Published var gameEnded:Bool = false
    static func create_model()->BlackjackGameModel{
        return BlackjackGameModel(user:Player(),dealer:Player())
    }
    init() {
        playerScore=model.user.calculateScore()
        dealerScore=model.dealer.hand[0].rank.setValue == 1 ? 11 : model.dealer.hand[0].rank.setValue
    }
    func hit(){
        model.hit(player: model.user)
        playerScore=model.user.calculateScore()
        if playerScore > 21{
            stand()
        }
    }
    func stand(){
        model.stand()
        dealerScore=model.dealer.calculateScore()
        result=model.checkWinner()
        gameEnded=true
    }
    func reset(){
        result = ""
        gameEnded = false
        model.startGame()
        playerScore = model.user.calculateScore()
        dealerScore = model.dealer.hand[0].rank.setValue
    }
}
