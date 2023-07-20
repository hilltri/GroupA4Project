//
//  AllEventsPage.swift
//  GroupA4Project
//
//  Created by Hillary Trinh on 2023-07-19.
//

import SwiftUI

struct AllEventsPage: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color("Blue")
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        NavigationLink(destination: ContentView()) {
                            Image("back")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .offset(x: 20)
                        }
                        Spacer()
                    }
                    Text("All Astronomical Events")
                        .foregroundColor(Color("Beige"))
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    VStack{
                        NavigationLink(destination: EventDescriptionPage()) {
                            GroupBox {
                                    Text("Mercury at Greatest Elongation East")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("Blue"))
                                    HStack {
                                        Image("0")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                        VStack{
                                            Text("Southern Hemisphere\nAugust 9, 2023")
                                                .lineSpacing(6.0)
                                                .foregroundColor(Color("Green Blue"))
                                        }
                                    }
                                }
                            
                            .padding()
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        }
                        
                        NavigationLink(destination: EventDescriptionPage()) {
                            GroupBox {
                                Text("Perseid Meteors")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Blue"))
                                HStack {
                                    Image("1")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                    VStack{
                                        Text("Northern Hemisphere\nAugust 13, 2023")
                                            .lineSpacing(6.0)
                                            .foregroundColor(Color("Green Blue"))
                                    }
                                }
                            }
                            .padding()
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        }
                        
                        NavigationLink(destination: EventDescriptionPage()) {
                            GroupBox {
                                Text("Saturn at Opposition")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Blue"))
                                HStack {
                                    Image("2")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                    VStack{
                                        Text("Earth\nAugust 26 to 27, 2023")
                                            .lineSpacing(6.0)
                                            .foregroundColor(Color("Green Blue"))
                                    }
                                }
                            }
                            .padding()
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}
    struct AllEventsPage_Previews: PreviewProvider {
        static var previews: some View {
            AllEventsPage()
        }
    }


