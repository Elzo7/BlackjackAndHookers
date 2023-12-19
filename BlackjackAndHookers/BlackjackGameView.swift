//
//  BlackjackGameView.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import Foundation
struct BlackjackGameModel
{
    private (set)var cardDeck:Array<Card>
    init(suits:Array<String>,values:Array<String>,inside:Array<String>) {
        cardDeck=[]
        for i in 1...52
        {
            cardDeck.append(Card(id: suits[i%4]+" "+values[i%13], value: values[i%13],suit: suits[i%4],inside: inside[i-1]))
        }
    }
    mutating func cardShuffle()
    {
        cardDeck.filter({$0.discarded == true}).indices.forEach({cardDeck[$0].discarded = false;})
        cardDeck.shuffle()
    }
    
    struct Card: Identifiable,Equatable
    {
        var id:String
        var value: String
        var suit: String
        var inside:String
        var discarded: Bool = false
        var inDeck: Bool = true
    }
}
