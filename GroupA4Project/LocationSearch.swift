//
//  LocationSearch.swift
//  GroupA4Project
//
//  Created by Hillary Trinh on 2023-07-19.
//

import SwiftUI

struct LocationSearch: View {
    
    @Binding var location: Int
    @State private var title = "Click on your location!"
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Galaxy Background")
                    .imageScale(.large)
                VStack {
                    HStack {
                        NavigationLink(destination: ContentView()) {
                            Image("back")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                    }
                    .padding(.trailing, 300)
                }
                .offset(y: -350)
                VStack {
                    NavigationLink(destination: AllEventsPage(location: $location)) {
                        ZStack {
                            Rectangle()
                                .fill(Color("Dark Green"))
                                .frame(width: 300, height: 30)
                                .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                            Text(title)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("Blue"))
                        }
                    }
                    Button {
                        location = 1
                        title = "See events near you >"
                    } label: {
                        Image("N 1")
                            .resizable()
                            .frame(width: 450, height: 120)
                            .offset(x: -1)
                    }
                    Spacer()
                        .frame(height:0)
                    Button {
                        location = 2
                        title = "See events near you >"
                    } label: {
                        Image("S 1")
                            .resizable()
                            .frame(width: 450, height: 120)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LocationSearch_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AllEventsPage(location: .constant(0))
            AllEventsPage(location: .constant(1))
            AllEventsPage(location: .constant(2))
        }
    }
}
