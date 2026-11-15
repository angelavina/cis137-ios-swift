/*
 Lab # 3
 Angel Avina
 November 14, 2026
 
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
        for index in game.cards.indices {
            if game.cards[index].id == card.id {
                game.cards[index].isfaceup.toggle()
            }
        }
    }
    
}
