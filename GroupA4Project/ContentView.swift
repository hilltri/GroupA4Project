//
//  ContentView.swift
//  GroupA4Project
//
//  Created by Hillary Trinh on 2023-07-19.
//

import SwiftUI

struct ContentView: View {
    
    @State var location = 0
    
    var body: some View {
        NavigationStack {
            ZStack{
                Image("galaxy")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                        .frame(height: 40)
                        Text("Searching Beyond our Planet")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Beige"))
                            .toolbar {
                                ToolbarItem(placement: .bottomBar) {
                                    NavigationLink(destination: AllEventsPage(location: $location)) {
                                        Text("All Astronomical Events")
                                            .font(.headline)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color("Beige"))
                                            .frame(width: /*@START_MENU_TOKEN@*/175.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/75.0/*@END_MENU_TOKEN@*/)
                                            .background(Color("Green Blue"))
                                            .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                                    }
                                }
                                ToolbarItem(placement: .bottomBar) {
                                    NavigationLink(destination: LocationSearch(location: $location)) {
                                        Text("Location Based Search")
                                            .font(.headline)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color("Beige"))
                                            .frame(width: /*@START_MENU_TOKEN@*/175.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/75.0/*@END_MENU_TOKEN@*/)
                                            .background(Color("Green Blue"))
                                            .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                                    }
                                    
                                }
                            }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
