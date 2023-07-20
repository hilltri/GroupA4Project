//
//  ContentView.swift
//  GroupA4Project
//
//  Created by Hillary Trinh on 2023-07-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Image("galaxy")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                        .frame(height: 50)
                        Text("Searching Beyond our Planet")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Beige"))
                            .padding(/*@START_MENU_TOKEN@*/.all, -5.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 325, height: /*@START_MENU_TOKEN@*/35.0/*@END_MENU_TOKEN@*/)
                           
                            .cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        
                        
                            .toolbar {
                                ToolbarItem(placement: .bottomBar) {
                                    NavigationLink(destination: AllEventsPage()) {
                                        Text("   All Astronomical   Events")
                                            .font(.headline)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color("Beige"))
                                            .multilineTextAlignment(.center)
                                            .frame(maxWidth: .infinity, alignment: .leadingLastTextBaseline)
                                            .frame(width: /*@START_MENU_TOKEN@*/175.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/75.0/*@END_MENU_TOKEN@*/)
                                            .background(Color("Green Blue"))
                                            .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                                        
                                        
                                    }
                                    
                                }
                                ToolbarItem(placement: .bottomBar) {
                                    NavigationLink(destination: LocationSearch()) {
                                        Text("Location Based Search")
                                            .font(.headline)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color("Beige"))
                                            .multilineTextAlignment(.center)
                                            .frame(width: /*@START_MENU_TOKEN@*/175.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/75.0/*@END_MENU_TOKEN@*/)
                                            .background(Color("Green Blue"))
                                            .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                                        
                                    }
                                    
                                }
                            }
                    }
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
