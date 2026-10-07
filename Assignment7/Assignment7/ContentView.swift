/*
 Assignment #7
 Angel Avina
 Date: 10/6/26
 */

import SwiftUI

extension VerticalAlignment {
    enum upanddown: AlignmentID{
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
                    }
            }
    static let UPDOWN = VerticalAlignment(upanddown.self)
        }

extension HorizontalAlignment {
    enum sidetoside: AlignmentID{
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
                    }
            }
    static let side2side = HorizontalAlignment(sidetoside.self)
        }


struct ContentView: View {
    var body: some View {
        ZStack{
            
            Color.blue
            .ignoresSafeArea()
            
            VStack(alignment: .side2side){
                Spacer()
                VStack{
                    Text("College of San Mateo")
                        .font(.title)
                        .bold()
                    HStack{
                        Image("bridge")
                            .resizable()
                            .frame(width:200, height:200)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        /*
                         Bay bridge image taken from https://www.explorest.com/places/california/san-francisco/harrison-street-view-bay-bridge
                         */
                        Text("Angel Avina")
                            .font(.title)
                    }
                }
                .alignmentGuide(.side2side) { d in
                    d[HorizontalAlignment.center]
                }
                
                HStack (alignment: .UPDOWN){
                    VStack(alignment:.leading){
                        Text("Course:")
                            .alignmentGuide(.UPDOWN) { d in
                                d[VerticalAlignment.center]
                            }
                        Text("Course Description:")
                        Text("Date:")
                    }
                    .bold()
                    
                    VStack(alignment:.leading){
                        Text("CIS 137")
                            .alignmentGuide(.UPDOWN) { d in
                                d[VerticalAlignment.center]
                            }
                        Text("iOS/Swift Programming")
                        Text("October 6, 2026")
                    }
                }
                .alignmentGuide(.side2side) { d in
                    d[HorizontalAlignment.center]
                }
                .padding()
                
                Spacer()
                Image("csm_logo")
                    .resizable()
                    .frame(width:250, height:250)
                /*
                 CSM logo image taken from
                 https://collegeofsanmateo.edu/marketing/logos-styleguide.php                 */
                    .alignmentGuide(.side2side) { d in
                        d[HorizontalAlignment.center]
                    }
                Spacer()
            }
        }
    }
}
#Preview {
    ContentView()
}
