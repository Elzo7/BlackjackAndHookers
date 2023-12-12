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
    static var values = ["A","2","3","4","5","6","7","8","10","11","J","D","K"]
    var cardDeck:Array<BlackjackGameModel.Card>
    {
        return model.cardDeck
    }
    private static  func createModel()->BlackjackGameModel
    {
        return BlackjackGameModel(suits: suits, values: values)
    }
    @Published
    var model=createModel()
}
