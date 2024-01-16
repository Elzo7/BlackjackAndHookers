//
//  Player.swift
//  BlackjackAndHookers
//
//  Created by student on 14/01/2024.
//

import Foundation

class Player {
    var hand: [BlackjackGameModel.Card]
    var points: Int{
        return calculateScore()
    }
    init() {
        self.hand = []
    }
    func emptyHand()
    {
        hand.removeAll()
    }
    func receiveCard(card:BlackjackGameModel.Card)
    {
        self.hand.append(card)
    }
    func calculateScore() -> Int{
        var nr_ace = 0
        var points = 0
        for card in hand {
            if card.rank == .ace {
                nr_ace += 1
            }
            else
            {
                points += card.rank.setValue
            }
        }
        for _ in 0 ..<  nr_ace
        {
            if points + 11 > 21
            {
                points+=1
            }
            else
            {
                points+=11
            }
        }
        return points
    }
}
