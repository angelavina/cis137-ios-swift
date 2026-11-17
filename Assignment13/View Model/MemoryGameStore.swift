/*
 Assignment # 13
 Angel Avina
 November 16, 2026
 
 */

import SwiftUI
import Combine

class MemoryGameStore: ObservableObject {
    
    @Published var game = MemoryGame()
    

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    func flipcard(_ card: MemoryGame.Card) {
        game.flipcard(card)
    }
    
    var cards: Array<MemoryGame.Card> {
        game.cards
    }
    
    var numberofpairs: Int{
        game.numberofpairs
    }
    
    func reset() {
        game.reset()
    }
    
    var progress: Double{
        game.progress
    }
    
} // end of object

