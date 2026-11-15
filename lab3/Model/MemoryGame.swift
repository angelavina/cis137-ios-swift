/*
 Lab # 3
 Angel Avina
 November 14, 2026
 
 */

import Foundation

struct MemoryGame {
    
    var cards: Array<Card>

    
    struct Card: Identifiable {
        let content: String
        let id: Int
        var isfaceup: Bool = false

    }
        
    init() {
        let flowers = ["flower1", "flower6", "flower3", "flower4", "flower5", "flower6", "flower7", "flower1", "flower5", "flower7", "flower4", "flower3"]
        
        cards = flowers.enumerated().map { index, flower in
            Card(content: flower, id: index)
        }
        
    }
}


