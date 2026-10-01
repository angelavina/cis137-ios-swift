/*
 Lab 1
 Angel Avina
 9/30/26
 */

import SwiftUI

let dognames = ["Airedale Terrier",
                "American Foxhound",
                "Dutch Shepherd",
                "Havanese",
                "Leonberger",
                "Mudi",
                "Norwegian Lundehund",
                "Pharaoh Hound",
                "Scottish Terrier",
                "Tosa"]

let dogdescription = ["The Airedale stands among the world's most versatile dog breeds and has distinguished himself as hunter, athlete, and companion.",
                      
                      "American Foxhounds are good-natured, low-maintenance hounds who get on well with kids, dogs, even cats, but come with special considerations for prospective owners.",
                      
                      "The Dutch Shepherd is a lively, athletic, alert and intelligent breed, and has retained its herding instinct for which it was originally developed.",
                      
                      "Havanese, the only dog breed native to Cuba, are vivacious and sociable companions and are especially popular with American city dwellers.",
                      
                      "The Leonberger is a lush-coated giant of German origin. They have a gentle nature and serene patience and they relish the companionship of the whole family.",
                      
                      "The Mudi is an extremely versatile, intelligent, alert, agile, all-purpose Hungarian farm dog. The breed is a loyal protector of property and family members without being overly aggressive.",
                      
                      "From Norway’s rocky island of Vaeroy, the uniquely constructed Norwegian Lundehund is the only dog breed created for the job of puffin hunting. With puffins now a protected species, today’s Lundehund is a friendly, athletic companion.",
                      
                      "The Pharaoh Hound, ancient \"Blushing Dog\" of Malta, is an elegant but rugged sprinting hound bred to course small game over punishing terrain. Quick and tenacious on scent, these friendly, affectionate hounds settle down nicely at home.",
                      
                      "A solidly compact dog of vivid personality, the Scottish Terrier is an independent, confident companion of high spirits. Scotties have a dignified, almost-human character.",
                      
                      "The Tosa's temperament is marked by patience, composure, boldness and courage. He is normally a tranquil, quiet, and obedient dog, with a calm but vigilant demeanor."]

var dogDict = Dictionary(uniqueKeysWithValues: zip(dognames, dogdescription))


struct ContentView: View {
    
    @State private var selection: Int?
    
    var body: some View {
        ZStack{
            Color.white
                .contentShape(Rectangle())
                .onTapGesture{
                    selection = nil
                }
            
            
            
            VStack {
                Text("Tap on the dog to see description")
                HStack{
                    Group{
                        Image("Airedale Terrier")
                            .resizable()
                            .onTapGesture {
                                selection = 0
                            }
                        Image("American Foxhound")
                            .resizable()
                            .onTapGesture {
                                selection = 1
                            }
                        Image("Dutch Shepherd")
                            .resizable()
                            .onTapGesture {
                                selection = 2
                            }
                    }
                    .scaledToFit()
                }
                HStack{
                    Group{
                        Image("Havanese")
                            .resizable()
                            .onTapGesture {
                                selection = 3
                            }
                        Image("Leonberger")
                            .resizable()
                            .onTapGesture {
                                selection = 4
                            }
                        Image("Mudi")
                            .resizable()
                            .onTapGesture {
                                selection = 5
                            }
                    }
                    .scaledToFit()
                }
                HStack{
                    Group{
                        Image("Norwegian Lundehund")
                            .resizable()
                            .onTapGesture {
                                selection = 6
                            }
                        Image("Pharaoh Hound")
                            .resizable()
                            .onTapGesture {
                                selection = 7
                            }
                        Image("Scottish Terrier")
                            .resizable()
                            .onTapGesture {
                                selection = 8
                            }
                    }
                    .scaledToFit()
                }
                
                HStack{
                    Group{
                        Image("Tosa")
                            .resizable()
                            .onTapGesture {
                                selection = 9
                            }
                    }
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { size, axis in
                        size * 0.29
                        
                    }
                    Spacer()
                    
                }
                .padding()
                
                if selection == 0{
                    Text(dogdescription[0])
                } else if selection == 1 {
                    Text(dogdescription[1])
                }else if selection == 2 {
                    Text(dogdescription[2])
                }else if selection == 3 {
                    Text(dogdescription[3])
                }else if selection == 4 {
                    Text(dogdescription[4])
                }else if selection == 5 {
                    Text(dogdescription[5])
                }else if selection == 6 {
                    Text(dogdescription[6])
                }else if selection == 7 {
                    Text(dogdescription[7])
                }else if selection == 8 {
                    Text(dogdescription[8])
                }else if selection == 9 {
                    Text(dogdescription[9])
                }else if selection == nil {
                    Text(" ")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
