/*
 Assignment #14
 Angel Avina
 November 20, 2026
 
 */

import SwiftUI

struct ContentView: View {
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    @State private var currentOffset: CGSize = .zero
    @State private var finalOffset: CGSize = .zero
    
    var body: some View {
        
        // Image with 3 gestures applied
        TabView{
            Tab("Image", systemImage: "photo"){
                VStack(spacing: 15){
                    Spacer()
                        .frame(height: 15)
                    
                    HStack{
                        VStack(alignment: .center){
                            Image(systemName: "magnifyingglass")
                            Text("Magnify")
                            Text("Two fingers")
                        }
                        Divider()
                            .frame(height: 80)
                            .frame(width: 2)
                            .overlay(Color.black)
                        
                        VStack(alignment: .center){
                            Image(systemName: "pointer.arrow.click.2")
                            Text("Reset")
                            Text("Double tap")
                        }
                        Divider()
                            .frame(height: 80)
                            .frame(width: 2)
                            .overlay(Color.black)
                        
                        VStack(alignment: .center){
                            Image(systemName: "pointer.arrow.and.square.on.square.dashed")
                            Text("Drag")
                            Text("Hold and move")
                        }
                    }

                    
                    ZStack{
                        Image("saint_peters_basilica_out")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(finalAmount + currentAmount)
                            .offset(
                                x: finalOffset.width + currentOffset.width,
                                y: finalOffset.height + currentOffset.height
                            )
                    }
                }
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .contentShape(Rectangle())
                
                .gesture(
                    MagnifyGesture()
                        .onChanged { value in
                            currentAmount = value.magnification - 1
                        }
                        .onEnded { value in
                            finalAmount += currentAmount
                            currentAmount = 0
                        }
                )
                
                .onTapGesture(count: 2){
                    finalAmount = 1
                    currentOffset = .zero
                    finalOffset = .zero
                }
                
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            currentOffset = value.translation
                        }
                        .onEnded { value in
                            // Save the new resting position and reset active drag
                            finalOffset.width += value.translation.width
                            finalOffset.height += value.translation.height
                            currentOffset = .zero
                        }
                )
            }
            
            // Explanation of image used
            Tab("About", systemImage: "text.document"){
                VStack(alignment: .leading, spacing: 30){
                    Text("About Image")
                        .font(.largeTitle)
                        //.bold()
                        .foregroundStyle(.blue)
                    VStack(alignment: .leading, spacing: 10){
                        Text("Image Description")
                            .font(.headline)
                        Text("Shown on image tab is an outside view of Saint Peter's Basilica which is located in Vatican City, an independent city-state within Rome, Italy. Saint Peter's Basilica was built over the traditional burial site of St. Peter and it's one of the holiest sites in Christianity. At the basilica Michelangelo's Pieta is located which was completed when Michelangelo was around 24 years old and the marble sculpture shows Mary holding Jesus. At the top of the 448 foot dome visitors can see 360-degree views of the Vatican Gardens, St. Peter's Square, and the Rome skyline. ")
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Why Choosen?")
                            .font(.headline)
                        Text("Chose St. Peter's Basilica because it offers an unmatched combination of Renaissance and Baroque art, monumental architecture, and nearly 2,000 years of religious history. Overall St. Peter's Basilica offers alot of religious and artistic history, making it one of the places I look forward to visiting in the future.")
                    }

                }
                .padding(.horizontal, 10)

            }
            
            // Description of gestures used
            Tab("Gestures", systemImage: "hand.point.up.left"){
                VStack(alignment: .leading, spacing: 40){
                    VStack(alignment:.leading, spacing: 10){
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 30))
                                .foregroundStyle(.blue)
                            
                            Text("Zoom in, Zoom out")
                                .font(.title)
                        }
                        .padding(.horizontal, 10)

                        Text("Description:")
                            .padding(.horizontal, 10)
                        Text("Chose the magnify gesture which is activated by pressing screen with two fingers and moving fingers either apart or tegether. Move two fingers apart to zoom in and together to zoom out.")
                            .padding(.horizontal, 10)
                    }
                    VStack(alignment:.leading, spacing: 10){
                        HStack{
                            Image(systemName: "pointer.arrow.click.2")
                                .font(.system(size: 30))
                                .foregroundStyle(.blue)

                            Text("Reset")
                                .font(.title)

                        }
                        .padding(.horizontal, 10)

                        Text("Description:")
                            .padding(.horizontal, 10)

                        Text("Chose double tap gesture which is activated by pressing twice anywhere on the screen . By pressing twice on the screen the view scaling and location resets back to its starting mode.")
                            .padding(.horizontal, 10)
                    }
                    VStack(alignment:.leading, spacing: 10){
                        HStack{
                            Image(systemName: "pointer.arrow.and.square.on.square.dashed")
                                .font(.system(size: 30))
                                .foregroundStyle(.blue)

                            Text("Drag")
                                .font(.title)
                        }
                        .padding(.horizontal, 10)

                        Text("Description:")
                            .padding(.horizontal, 10)

                        Text("Chose drag gesture which is activated by pressing and holding on screen with one finger and dragging finger to new location. By dragging finger the program recognizes the new location and compares it with previous to determine new x and y location for the image.")
                            .padding(.horizontal, 10)

                    }
                }
            }
        }
    }
}
        
        
        #Preview {
            ContentView()
        }
