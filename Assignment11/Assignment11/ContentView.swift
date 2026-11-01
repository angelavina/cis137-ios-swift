/*
 Assignment #11
 Angel Avina
 November 1, 2026
 
 */

import SwiftUI

struct Christmas: View{
    var body: some View{
        ScrollView{
                VStack(spacing: 25){
                    Divider().frame(height: 10).background(Color.red)
                    
                    Text("CHRISTMAS")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                    
                    Divider().frame(height: 10).background(Color.red)
                    
                    Image("christmas_image")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 15)
                    
                    Divider().frame(height: 10).background(Color.red)
                    
                    VStack(alignment: .leading, spacing: 10){
                        HStack{
                            Text("Date:").bold().font(.system(size: 20))
                            Text("December 25th").foregroundStyle(.white)
                                .font(.system(size: 20))
                        }
                            Text("Description:")
                                .bold()
                                .font(.system(size: 20))
                            Text("Christmas is an annual holiday celebrated on December 25th that commemorates the birth of Jesus Christ and serves as a major cultural season of joy, family, and giving.").foregroundStyle(.white)
                                .font(.system(size: 20))
                    }
                    .padding(.horizontal, 10)
                    Divider().frame(height: 10).background(Color.red)
                }
            }
        .background(Color.green)
        .scrollContentBackground(.hidden)
        }
    }


struct NewYear: View{
    var body: some View{
        ScrollView{
           Spacer()
                .frame(height: 50)
            VStack(spacing: 25){
                Text("HAPPY NEW YEARS!!")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.yellow)
                Spacer()
                
                Image("new_years_chicago")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 15)
                             Spacer()
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        Text("Date:").bold()
                            .font(.system(size: 20))
                        Text("January 1st")
                            .font(.system(size: 20))
                    }
                        Text("Description:").bold()
                            .font(.system(size: 20))
                        Text("New Years is celebrated on the night of December 31st which signifies the arrival of the new year, fresh starts, renewal, and turning a page on the passage of time.")
                            .font(.system(size: 20))
                }
                .padding(.horizontal, 15)
            }
        }
        .background(Color.mint)
        .scrollContentBackground(.hidden)
    }
}


struct MexicoIndependence: View{
    var body: some View{
        ScrollView{
            Spacer()
                .frame(height: 50)
            
            VStack(spacing: 40){
                Text("MEXICAN INDEPENDENCE DAY")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.red)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .padding(.horizontal, 15)

                Image("mexico_independence")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .brightness(0.2)
                    .padding(.horizontal, 15)
                
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        Text("Date:").bold()
                            .font(.system(size: 20))
                            .foregroundStyle(.green)
                        Text("September 16th")
                            .font(.system(size: 20))
                    }
                        Text("Description:").bold()
                            .font(.system(size: 20))
                            .foregroundStyle(.green)
                        Text("Mexican Independence (Dia de la Independencia) is celebrated on September 16th celebrates the start of Mexico's 11-year war for freedom from Spanish rule. The main celebrations actually begin on the night of September 15th, around 11pm the president of Mexico rings a bell from a balcony and reenacts the patriotic cheers of \"Viva Mexico!\", known as El Grito.")
                            .font(.system(size: 20))
                    Spacer()
                        .frame(height: 30)
                    
                    Image("flag_of_mexico")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                .padding(.horizontal, 15)
            }
        }
    }
}
    

struct ContentView: View {
    var body: some View {
        TabView{
            Christmas().tabItem{
                Image(systemName: "snowflake")
                Text("Christmas")
            }
            NewYear().tabItem{
                Image(systemName: "party.popper")
                Text("New Years")
            }
            MexicoIndependence().tabItem{
                Image(systemName: "flag")
                Text("Independence Day")
            }
        }
    }
}

#Preview {
    ContentView()
}
