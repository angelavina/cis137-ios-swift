/*
 Assignment #15
 Angel Avina
 November 23,  2026
 */

import SwiftUI

struct ContentView: View {
    @State private var animal = "hare"
    @State private var textColor: Color = .blue
    
    var body: some View {
        VStack {
            Text("Long press to choose animal")
                .font(.title)
                .contextMenu {
                    Button(action: {
                        animal = "tortoise"
                        textColor = .blue
                    }){
                        HStack{
                            Text("Tortoise")
                            Image(systemName: "tortoise")
                        }
                    }
                    
                    Button(action: {
                        animal = "hare"
                        textColor = .blue
                    }){
                        HStack{
                            Text("Hare")
                            Image(systemName: "hare")
                        }
                    }
                    
                    Button(action: {
                        animal = "bird"
                        textColor = .blue
                    }){
                        HStack{
                            Text("Bird")
                            Image(systemName: "bird")
                        }
                    }
                }
            
        }
        
        Spacer()
            .frame(height: 175)
        
        Image(systemName: animal)
            .font(.system(size: 75))
         
            .contextMenu {
                Button(action: {
                    textColor = .orange
                }){
                        Text("orange")

                }

                Button(action: {
                    textColor = .green
                }){
                        Text("green")

                }

                Button(action: {
                    textColor = .purple
                }){
                        Text("purple")

                }
            }
            .foregroundStyle(textColor)
        }
    
    }


#Preview {
    ContentView()
}
