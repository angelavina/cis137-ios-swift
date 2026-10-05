/*
 Assignment #6
 Angel Avina
 10/4/26
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("image_earth")
                .resizable()
                .scaledToFill()
                .opacity(0.8)
/*
 Note earth image used from https://science.nasa.gov/earth/earth-observatory/earth-from-space-885/
 */
            VStack{
                
                Spacer()
                
                HStack{
                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 100 , height:100)
                        .foregroundStyle(.blue)
                        .background(Color.white,in:Circle())
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 100 , height:100)
                        .foregroundStyle(.pink)
                    
                    Image(systemName: "tree")
                        .resizable()
                        .frame(width: 100 , height:100)
                        .foregroundStyle(.green)
                    
                }
                
                Spacer()
                
                HStack{
                    Image(systemName: "cloud.fill")
                        .resizable()
                        .frame(width: 100 , height:100)
                        .foregroundStyle(.gray)

                    Image(systemName: "leaf")
                        .resizable()
                        .frame(width: 100 , height:100)
                        .foregroundStyle(.green)
                    
                    Image(systemName: "wind")
                        .resizable()
                        .frame(width: 100 , height:100)
                        .foregroundStyle(.cyan)
                    
                }
                
                Spacer()
                
                HStack{
                    Image(systemName: "moon.fill")
                        .resizable()
                        .frame(width: 100 , height:100)
                        .foregroundStyle(.purple)
                    
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 100 , height:100)
                        .foregroundStyle(.yellow)
                    
                    Image(systemName: "bird.fill")
                        .resizable()
                        .frame(width: 100 , height:100)
                        .foregroundStyle(.mint)
                    
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
