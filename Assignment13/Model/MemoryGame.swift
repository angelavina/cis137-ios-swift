/*
 Assignment # 13
 Angel Avina
 November 16, 2026
 
 */

import Foundation

struct MemoryGame {
    
    var cards: Array<Card>
    var numberofpairs = 0
    var progress: Double = 0
    var choosen: [String] = []
    var cardident: [Int] = []
    var faceupcards = 0
    
    struct Card: Identifiable {
        var content: String
        var isfaceup: Bool = false
        var ismatched: Bool = false
        var id: Int
    }
    
    
    mutating func flipcard(_ card: Card) {
        
        guard numberofpairs < 6 else{
            return
        }
        
        for index in cards.indices {
            
            if cards[index].id == card.id && cards[index].isfaceup != true{
                cards[index].isfaceup.toggle()
            
                faceupcards += 1
                choosen.append(card.content)
                cardident.append(card.id)
                               
                if faceupcards.isMultiple(of: 2) && choosen[choosen.count-2] == choosen[choosen.count-1]{
                    
                    cardident.removeAll()
                    numberofpairs += 1
                    progress += 10
                    
                } else if faceupcards.isMultiple(of: 2) && choosen[choosen.count-2] != choosen[choosen.count-1]{
                    
                    choosen.removeLast(2)
                    faceupcards -= 2
                    cards[cardident[0]].isfaceup.toggle()
                    cards[cardident[1]].isfaceup.toggle()
                    cardident.removeAll()

                }
                
            } else{
                continue
            }
       }
    }
    
    
    mutating func reset(){
        numberofpairs = 0
        progress = 0
        faceupcards = 0
        choosen = []
        
        for index in cards.indices{
            cards[index].isfaceup = false
        }
    }
      
    
    
    init() {
        let flowers = ["flower1", "flower6", "flower3", "flower4", "flower5", "flower6", "flower7", "flower1", "flower5", "flower7", "flower4", "flower3"]
        
        cards = flowers.enumerated().map { index, flower in
            Card(content: flower, id: index)
            
        }
        
    }
}


