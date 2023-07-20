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
                    NavigationLink(destination: LocationSearch()) {
                        Text("Explore")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.5176470588235295, green: 0.7098039215686275, blue: 0.6235294117647059))
                            .padding(/*@START_MENU_TOKEN@*/.all, -5.0/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/98.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/35.0/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.16862745098039217, green: 0.2549019607843137, blue: 0.3843137254901961)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        
                        
                            .toolbar {
                                ToolbarItem(placement: .bottomBar) {
                                    NavigationLink(destination: AllEventsPage()) {
                                        Text("   All Astronomical   Events")
                                            .font(.headline)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color(red: 0.8666666666666667, green: 0.8470588235294118, blue: 0.7686274509803922))
                                            .multilineTextAlignment(.center)
                                            .frame(maxWidth: .infinity, alignment: .leadingLastTextBaseline)
                                            .frame(width: /*@START_MENU_TOKEN@*/175.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/75.0/*@END_MENU_TOKEN@*/)
                                            .background(Color(red: 0.3137254901960784, green: 0.5019607843137255, blue: 0.5568627450980392))
                                            .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                                        
                                        
                                    }
                                    
                                }
                                ToolbarItem(placement: .bottomBar) {
                                    NavigationLink(destination: LocationSearch()) {
                                        Text("Location Based Search")
                                            .font(.headline)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color(red: 0.8666666666666667, green: 0.8470588235294118, blue: 0.7686274509803922))
                                            .multilineTextAlignment(.center)
                                            .frame(width: /*@START_MENU_TOKEN@*/175.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/75.0/*@END_MENU_TOKEN@*/)
                                            .background(Color(red: 0.3137254901960784, green: 0.5019607843137255, blue: 0.5568627450980392))
                                            .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                                        
                                    }
                                    
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
