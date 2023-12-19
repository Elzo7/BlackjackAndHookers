//
//  BlackjackGameViewModel.swift
//  BlackjackAndHookers
//
//  Created by student on 12/12/2023.
//

import Foundation
class BlackjackGameViewModel:ObservableObject
{
    static var suits = ["c","d","w","z"]
    static var values = ["A","2","3","4","5","6","7","8","9","10","J","D","K"]
    static var inside = ["🂱","🃂","🂣","🃔","🂵","🃆","🂧","🃘","🂹","🃊","🂫","🃝","🂾","🃁","🂢","🃓","🂴","🂵","🂦","🃗","🂸","🃉","🂪","🃛","🂽","🃎","🂡","🃒","🂳","🃄","🂥","🃖","🂷","🃈","🂩","🃚","🂻","🃍","🂮","🃑","🂲","🃃","🂤","🃕","🂶","🃇","🂨","🃙","🂺","🃋","🂭","🃞"]
    var cardDeck:Array<BlackjackGameModel.Card>
    {
        return model.cardDeck
    }
    private static  func createModel()->BlackjackGameModel
    {
        return BlackjackGameModel(suits: suits, values: values,inside: inside)
    }
    @Published
    var model=createModel()
}
