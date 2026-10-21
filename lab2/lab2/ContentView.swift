/*
 Lab #2
 Angel Avina
 October 18, 2026
 */

import SwiftUI



/*created array of flower name constants, using only 6 pairs of images.
*/
let images = ["flower1", "flower6", "flower3", "flower4", "flower5", "flower6", "flower7", "flower1", "flower5", "flower7", "flower4", "flower3"]



/*
 created struct cards that has the cards and flipping capability. Start by declaring variable flower String since it will be used in ContentView farther down in code. Declared a State variable isfaceup boolean with initial value false, so the backside of the cards are facing the player.
 
 Created a ZStack with background roundedrectangle, then image (flower) depends on which is called per variable flower and constant shape equal to backcard at the top of the ZStack. Then added if else statement depending on if isfaceup is true the card is flipped making the back of card transparent and showing the flower image, else the back of the card is shown to player.
 
 ontapgesture is used to tap on card and flip the card variable isfaceup is = to not isfaceup flipping it from false to true.
 */
struct cards: View{
    var flower: String
    @State var isfaceup : Bool = false
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius:10)
                .stroke(lineWidth: 3)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
            
            Image(flower)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            let shape = backcard()
            
            if isfaceup {
                shape.opacity(0)
            }
            else{
                shape.opacity(1)
            }
        }
            .onTapGesture{
                isfaceup = !isfaceup
        }
    }
}



/*
 Created an additonal struct backcard to organize the backside of the card which struct backcard is used inside of cards to make the code more straightforward to understand. I used ZStack with background roundedrectangle and then csm logo image at the top.
 */
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
/*
 struct contentview updated to declaring the constant griditems with tree so LazyVGrid will have 3 columns. ScrollView used to give capability to scroll app, very useful in simulation when rotating the phone horizontally. Inside scroll view have game title first and then LazyVGrid specify the columns to array columns and spacing of 30 units. Used ForEach with Array(images.enumerated()) to give each array a specific number in the array as an idetifier, this was required because if duplicate items in the array I cant use \.self since the images array values are not all unique. Then called cards struct with flower value referencing the specific index in the images array.
 
 Padding was used to increase the spacing between the two outer columns with the edge of the phone. fame was used to give max height of the entire working area for the LazyVGrid.
 */

    struct ContentView: View {
                
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        var body: some View {
            ScrollView {
                Text("Memory Game").font(.largeTitle)
                    .foregroundColor(.blue)
                    .bold()
                
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(Array(images.enumerated()), id: \.offset) { index, im in
                        cards(flower:im)
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
