/*
 Lab # 3
 Angel Avina
 November 14, 2026
 
 */

import SwiftUI



struct frontcard: View{
    
    let flower: String
    let isfaceup: Bool
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius:10)
                .stroke(lineWidth: 3)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
        
            if isfaceup {
            
            Image(flower)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            else{
                backcard()
            }
        }
        .rotation3DEffect(
            .degrees(isfaceup ? 180: 0),
            axis: (x: 0, y:1, z:0)
        )
        .animation(.easeInOut(duration: 0.7),
                   value: isfaceup)
    }
}



struct backcard: View{
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius:10)
                .stroke(lineWidth: 3)
                .foregroundColor(.black)
                .frame(width: 100, height: 100)
            
            Image("csm_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}



    struct ContentView: View {
        @StateObject var viewModel = MemoryGameStore()

        var body: some View {
            ScrollView {
                Text("Memory Game").font(.largeTitle)
                    .foregroundColor(.blue)
                    .bold()
                
                LazyVGrid(columns: viewModel.columns, spacing: 30) {
                    
                    ForEach(viewModel.game.cards) { card in
                        frontcard(flower:card.content, isfaceup: card.isfaceup)
                        
                    .onTapGesture{
                            viewModel.flipcard(card)
                    }
                        
                    }
                }
                    .padding(.horizontal)
            }
            .frame(maxHeight: 600)
        }
    }


#Preview {
    ContentView()
}
