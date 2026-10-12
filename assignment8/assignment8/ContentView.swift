/**
 Assignment #8
 Angel Avina
 October 12, 2026
 
 Modification made to the original app:
 (1) In ContentView.swift, the struct ContentView I added the last HStack for Submarines.
 
 (2) I copied and renamed the Menu.swift file to Ship.swift.  I then modified the struct, variables, and debugg statement as required for the new listed item Submarines.
 
 (3) I copied and renamed the menu.json file to subs.json. I then modified the subs.json file to contain data for the variables listed in Ship.swift file, not including the variable shipimage.
 
 (4) In Assets.xcassets I saved an image to be used for each submarine class listed in subs.json file.
 
 (5) In ContentView.swift file I added "let ship" line to decode and load data from subs.json file  to be used for my code similar to the lecture example.
 
 (6) In ContentView.swift file, I created struct SubDetail. Similar to lecture I created a ForEach loop to list out all Submarine classes listed in subs.json file. I added a NavigationLink with a ForEach loop to pull the requested data for each submarine class I used a VStack to have an image display at top and another VStack to list out the submarine information.
 
 I also used various modifiers to space out the content to my preference, .bold to adjust the font for some of the text fields, also alignment and image sizing modifiers. I enclosed the VStack in a List because when I changed the simulator iphone in the horizontal orientation part of my displayed information was not showing and was static, when using the List command it added a scroll bar and allowed to scroll and see all the information. I also added scrollContentBackground and background to change the background color to white, if this is not added the background is color gray.
 
(7) In ContentView.swift file, inside struct ContentView for the last HStack I previously added for the new listed item Submarines I added a NavigationLink to the SubDetail struct.
 
 */

import SwiftUI

let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")

let ship = Bundle.main.decode([ShipSection].self, from: "subs.json")

struct CarDetail: View {
    var body: some View {
        List {
            VStack{
                Text("Tesla")
                Text("Prius")
                Text("Rav4")
            }
        }
    }
}

struct FoodDetail: View {
    var body: some View {
        ForEach(menu){ section in
            NavigationLink(destination: {
                ForEach(section.items) { item in
                    HStack{
                        Image(item.thumbnailImage)
                        Text(item.name)
                    }
                }
            }){
                Text(section.name)
                
            }
        }
    }
}

struct SubDetail: View {
    var body: some View {
        ForEach(ship){ section in
            NavigationLink(destination: {
                ForEach(section.items) { item in
                    List{
                        VStack(spacing: 50){
                        Image(section.shipimage)
                            .resizable()
                            .frame(width: 350, height: 350)
                            
                        VStack(alignment:.leading, spacing: 20){
                            HStack{
                                Text("Hull Code:").bold()
                                Text(item.hullcode)
                            }
                            HStack{
                                Text("Build start date:").bold()
                                Text(item.buildstart)
                            }
                            HStack{
                                Text("Number of submarines in fleet:").bold()
                                Text("\(item.fleet)")
                            }
                            HStack(alignment:.top){
                                Text("Submarine role:").bold()
                                Text(item.role)
                            }
                        }
                    }
                }
                    .scrollContentBackground(.hidden)
                    .background(Color.white)
                }
            })
            {
                Text(section.name).font(.largeTitle)
            }
        }
    }
}
    
    struct ContentView: View {
        var body: some View {
            NavigationView {
                List {
                    NavigationLink(destination: CarDetail())
                    {
                        HStack {
                            Image(systemName:"car.fill")
                            Text("Cars")
                        }
                    }
                    HStack {
                        Image(systemName:"house.fill")
                        Text("Home")
                    }
                    HStack {
                        Image(systemName:"figure.run")
                        Text("Fitness")
                    }
                    NavigationLink(destination: FoodDetail())
                    {
                        HStack {
                            Image(systemName:"fork.knife")
                            Text("Food")
                        }
                    }
                    NavigationLink(destination: SubDetail())
                    {
                        HStack{
                            Image(systemName: "oar.2.crossed")
                            Text("Submarines")
                        }
                    }
                }.navigationTitle("Menu")
            }
        }
    }
    #Preview {
        ContentView()
    }

