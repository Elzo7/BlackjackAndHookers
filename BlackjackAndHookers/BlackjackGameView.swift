//
//  BlackjackGameView.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import Foundation
struct BlackjackGameModel
{
    var user: Player
    var dealer: Player
    var cardDeck:Array<Card>
    init(user:Player,dealer:Player) {
        self.user=user
        self.dealer=dealer
        cardDeck=[]
        for suit in  Suits.allCases{
            for rank in Rank.allCases
            {
                cardDeck.append(Card(rank:rank,suit:suit,image:"\(rank)_\(suit)"))
            }
        }
        startGame()
    }
    mutating func cardShuffle()
    {
        cardDeck.shuffle()
    }
    mutating func addCardsToDeck(){
        for suit in  Suits.allCases{
            for rank in Rank.allCases
            {
                cardDeck.append(Card(rank:rank,suit:suit,image:"\(rank)_\(suit)"))
            }
        }
        cardShuffle()
    }
    mutating func hit(player: Player){
        if cardDeck.isEmpty{
            addCardsToDeck()
        }
        player.receiveCard(card: cardDeck.removeFirst())
            
    }
    mutating func stand()
    {
        while dealer.calculateScore()<17
        {
            hit(player: dealer)
            
        }
    }
    mutating func startGame()
    {
        if !user.hand.isEmpty && !dealer.hand.isEmpty{
            user.emptyHand()
            dealer.emptyHand()
        }
        if(cardDeck.count < 4)
        {
            addCardsToDeck()
        }
        cardShuffle()
        user.receiveCard(card: cardDeck.removeFirst())
        user.receiveCard(card: cardDeck.removeFirst())
        dealer.receiveCard(card: cardDeck.removeFirst())
        dealer.receiveCard(card: cardDeck.removeFirst())
            
    }
    func checkWinner() -> String {
        let player_score = user.calculateScore()
        let dealer_score = dealer.calculateScore()
        if(player_score == 21 && dealer_score != 21)
        {
            return "Player Blackjack"
        }
        else if(dealer_score == 21 && player_score != 21)
        {
            return "Dealer Blackjack"
        }
        else if (player_score > 21)
        {
            if (dealer_score > 21)
            {
                return "Both Busted"
            }
            else
            {
                return "Player Busted"
            }
        }
        else if (dealer_score > 21)
        {
            return "Dealer Busted"
        }
        else if (player_score > dealer_score)
        {
            return "Player Win"
        }
        else if (dealer_score > player_score)
        {
            return "Dealer Win"
        }
        else
        {
            return "Tie"
        }
    }
    enum Suits:String,CaseIterable
    {
        case trefl,karo,kier,pik
    }
    enum Rank:Int,CaseIterable
    {
        case ace=1
        case two,three,four,five,six,seven,eight,nine,ten
        case jack,queen,king
        
        var setValue: Int {
            switch self{
            case .jack,.queen,.king:
                return 10
            default:
                return rawValue
            }
        }
        
    }
    
    struct Card: Identifiable,Equatable
    {
        var id=UUID()
        var rank: Rank
        var suit: Suits
        var image: String
        
    }
}
