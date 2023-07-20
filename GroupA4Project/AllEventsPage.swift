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
            VStack {
                Text("All Astronomical Events")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                VStack{
                    
                    NavigationLink(destination: EventDescriptionPage()) {
                        GroupBox("Mercury at Greatest Elongation East")
                        {
                            HStack {
                                Image("0")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                VStack{
                                    Text("Southern Hemisphere: West 08/09/23: Shortly after sunset")
                                        .lineSpacing(6.0)
                                }
                            }
                        }
                        .padding()
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    NavigationLink(destination: EventDescriptionPage()) {
                        GroupBox("Perseid Meteors")
                        {
                            HStack {
                                Image("1")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                VStack{
                                    Text("Northern Hemisphere: Northeast        08/13/23: Midnight")
                                        .lineSpacing(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                                }
                            }
                        }
                        .padding(.horizontal)
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    }
                    
                    NavigationLink(destination: EventDescriptionPage()) {
                        GroupBox("Saturn at Opposition")
                        {
                            HStack {
                                Image("2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                VStack{
                                    Text("East                                       08/26/23: Overnight")
                                        .lineSpacing(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                                }
                            }
                        }
                        .padding()
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    }
                }
            }
        }
    }
}

struct AllEventsPage_Previews: PreviewProvider {
    static var previews: some View {
        AllEventsPage()
    }
}
