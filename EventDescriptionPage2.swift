//
//  EventDescriptionPage2.swift
//  GroupA4Project
//
//  Created by AnnEEE on 2023-07-21.
//

import SwiftUI

struct EventDescriptionPage2: View {
    
    @Binding var location: Int
    @State private var event = 1
    
    @State private var locations = ["Southern Hemisphere", "Northern Hemisphere", "Earth"]
    @State private var events = ["Mercury at Greatest Elongation East", "Perseid Meteors", "Saturn at Opposition"]
    @State private var dates = ["August 9 shortly after sunset", "August 13 midnight to sunrise", "August 26 to 27 overnight"]
    
    @State private var descriptions = ["Mercury is be at its furthest distance from the sun, meaning it is the perfect opportunity to spot it in the night sky. It is normally not visible due to its close proximity with the sun.", "As the comet Swift-Tuttle gets close to the Sun, it heats up and pieces break off. These pieces become meteors as they enter Earth’s atmosphere, leaving long streaks of light and color.", "Earth goes between the Sun and Saturn, placing Saturn at opposition of the Sun. Saturn is the brightest and visible throughout the night. Use a 4-inch telescope to see its rings."]
    @State private var factors = ["• The sky may be too bright due to the moon or light pollution. Binoculars will help.\n• There may be turbulence due to the weather. Check the forecast in advance to ensure the weather is clear.", "• Light from the moon may wash out the meteors. Clouds may also block them from view.\n• Light pollution can greatly impact the visibility of meteors. Visit the resource section to participate in reducing light pollution.", "• If you’re in a more urban area like a city, it will be more difficult to see at night because of light pollution.\n• Other geographical features like mountains and trees can block the sky."]
    @State private var resources = ["https://earthsky.org/tonight/mercury-after-sunset-greatest-elongation-east/", "https://www.skyatnightmagazine.com/advice/what-is-astronomical-seeing/" , "https://solarsystem.nasa.gov/asteroids-comets-and-meteors/meteors-and-meteorites/perseids/in-depth/", "https://www.durango.org/blog/post/ways-reduce-light-pollution/", "https://www.space.fm/astronomy/starsgalaxies/visibilitylightpollution.html", "https://earthsky.org/astronomy-essentials/saturn-at-opposition-closest-brightest-best/"]
    
    @State private var description = ""
    @State private var factor = ""
    @State private var resource1 = ""
    @State private var resource2 = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Color("Green Blue")
                        .ignoresSafeArea()
                    VStack(spacing: 15) {
                        ZStack {
                            Color("Beige")
                            VStack {
                                HStack {
                                    NavigationLink(destination: AllEventsPage(location: $location)) {
                                        Image("back")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .offset(x: 20)
                                    }
                                    Spacer()
                                }
                                Text(locations[event])
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color("Green Blue"))
                                Image("\(event)")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.horizontal)
                                HStack {
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text(events[event])
                                            .font(.largeTitle)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color("Blue"))
                                        Text(dates[event])
                                            .foregroundColor(Color("Green Blue"))
                                    }
                                    .padding(.horizontal)
                                    .frame(alignment: .leading)
                                    Spacer()
                                }
                                Spacer()
                                    .frame(height: 20)
                                Image("compass\(event)")
                                    .resizable()
                                    .frame(width: 170, height: 155)
                                Spacer()
                                    .frame(height: 60)
                            }
                            .offset(y: 40)
                        }
                        VStack {
                            Spacer()
                                .frame(height: 10)
                            HStack {
                                Image("descriptions")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Button("Description") {
                                    if description == "" {
                                        description = descriptions[event] }
                                    else {
                                        description = "" }
                                }
                                .font(.title3)
                                .foregroundColor(Color("Blue"))
                            }
                            Text(description)
                                .foregroundColor(Color("Beige"))
                                .multilineTextAlignment(.center)
                            HStack {
                                Image("factors")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Button("Environmental Factors") {
                                    if factor == "" {
                                        factor = factors[event] }
                                    else {
                                        factor = "" }
                                }
                                .font(.title3)
                                .foregroundColor(Color("Blue"))
                            }
                            Text(factor)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("Beige"))
                            HStack {
                                Image("resources")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Button("Resources") {
                                    if resource1 == "" {
                                        resource1 = resources[event]
                                        resource2 = resources[event + 1] }
                                    else {
                                        resource1 = ""
                                        resource2 = ""
                                    }
                                }
                                .font(.title3)
                                .foregroundColor(Color("Blue"))
                            }
                            Link("\(resource1)", destination: URL(string: resources[event])!)
                            Link("\(resource2)", destination: URL(string: resources[event + 1])!)
                            Spacer()
                                .frame(height: 35)
                        }
                        .padding()
                        
                    }
                }
            }
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct EventDescriptionPage2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EventDescriptionPage2(location: .constant(0))
            EventDescriptionPage2(location: .constant(1))
            EventDescriptionPage2(location: .constant(2))
        }
    }
}
