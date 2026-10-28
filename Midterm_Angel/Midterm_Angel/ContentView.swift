/*
 Midterm Project
 Angel Avina
 October 27, 2026
 */

import SwiftUI

/* added the below line constant "data" to decode and load data from Data.json file, which contains data for the variables listed in Subject.swift file.
 
    Subject.swift file was updated to fit my example of country and travel location information, I added and modified variables.
 
    Data.json file was also updated with information for all the variables called out inside the Subject.swift file.
 
    All images used for this app were loaded in the Assets.xcassets section.
 */

let data = Bundle.main.decode([Subject].self, from: "Data.json")


/*
 Created struct "TravelDetail" to define the detail view that will be referenced using navigation link in struct "ContentView". I first declared constant "location" equal to Subject in order to keep track of which country I am looking at when TravelDetail is called in the ContentView. If this wasn't done, and I used a ForEach loop inside the TravelDetail all the views for each country were being displayed when each of the countries were selected.

    I created a list view and inside I added VStack, HStacks, Dividers, etc.. to display and organize the detailed image of the location to travel in the country selected and organize the text and small image of flag. In the Image input I call "location.imageName2", this is required so only the image for the active country in the ForEach loop is shown. ".location" was also used as Text input to pull the specific data for the country that the user selects in the app. For the description section I used .fixedSize(), to prevent the description text from being cut and not completly being shown on the app screen. At the end I specify the detail view with a title "Location Details" using .NavigationTitle().
 
 
 */
struct TravelDetail: View{
    
    let location: Subject
    
    var body: some View{
        List{
            VStack(spacing: 25){
                Image(location.imageName2)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
              Divider()
                
                VStack(alignment: .leading, spacing: 25){
                    
                    HStack(spacing: 10){
                        Text("Location:").bold()
                        Text(location.location + ",")
                        Text(location.name)

                        Image(location.imageName)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                    Divider()
                    
                        Text("Fun Facts:").bold()
                        Text(location.description)
                        .fixedSize(horizontal: false, vertical: true)
                }
                
            }
        }
        .navigationTitle("Location Details")

        }
    }

/*
 Inside the struct ContentView I created a List , and inside the list a ForEach loop using the information pulled and saved in constant "data". For each section or country specified in the Data.json file I showed Image of the flag and text layed out horizontally using HStack.
 
    I then incorporated the using of a navigation view inside the ContentView to use the struct TravelDetail. NavigationLink was used and destination was TravelDetail and I specified I wanted the info for the location, which was declared in the struct TravelDetail, for the current or active section of the ForEach loop inside the ContentView. This allowed the user to select the country go to a new screen that is organized by the struct TravelDetail and see information of the specific location to travel in the country selected. At the end of the ContentView I define the title using .navigationTitle.
 */


struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(data){ section in
                    NavigationLink(destination: TravelDetail(location: section))
                 {
                        HStack(spacing: 45){
                            Image(section.imageName)
                                .resizable()
                                .frame(width: 75, height: 75)
                            Text(section.name)
                                .font(.title)
                        }
                    }
                }
            }
            .navigationTitle(" Angel's Travel List")
        }
    }
}


#Preview {
    ContentView()
}
