//
//  EmojiConcentrationGame.swift
//  Concentration Game
//
//  Created by IS 543 on 10/21/24.
//

import SwiftUI


@Observable class EmojiConcentrationGame {
    // MARK: - Properties
    static let emojis = ["👻", "🎃", "💀", "🧟‍♀️", "😱", "👹", "🤡"]
    private var game = createGame()
    
    static func createGame() -> ConcentrationGame<String> {
        ConcentrationGame<String>(numberOfPairsOfCards: Int.random(in: 2...emojis.count)) { emojis[$0] }
    }
    
    // MARK: - Model access
    var cards: Array<ConcentrationGame<String>.Card> {
        game.cards
    }
    
    var score: Int {
        game.score
    }
    
    // MARK: - User intents
    func choose(_ card: ConcentrationGame<String>.Card) {
        game.choose(card: card)
    }
    func newGame() {
        game = EmojiConcentrationGame.createGame()
    }
    
}
