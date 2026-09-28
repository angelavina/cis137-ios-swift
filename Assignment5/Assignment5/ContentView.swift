/*
 Assignment #5
 Angel Avina
 Date: 9/27/26
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, my name is Angel!")
                .textCase(.uppercase)
                .font(.title)
                .foregroundStyle(.red.gradient)
                .fontDesign(.serif)
                .scaledToFill()
                //.padding()
                .padding([.top, .horizontal, .bottom], 5)
                .border(.black, width: 1)
            
            Divider()
    
            .padding()
            profileimage()
            
            //Image(systemName: "globe")
                //.imageScale(.large)
               // .foregroundStyle(.tint)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
