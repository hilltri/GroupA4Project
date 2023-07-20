//
//  LocationSearch.swift
//  GroupA4Project
//
//  Created by Hillary Trinh on 2023-07-19.
//

import SwiftUI

struct LocationSearch: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Galaxy Background")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                VStack{
                    Text("Click on your location!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    NavigationLink(destination: AllEventsPage()) {
                        Image("N 1")
                            .resizable()
                            .frame(width: 350, height: 130)
                    }
                    Spacer()
                        .frame(height:0)
                    NavigationLink(destination: AllEventsPage()) {
                        Image("S 1")
                            .resizable()
                            .frame(width: 350, height: 130)
                    }
                }
            }
        }
    }
}

struct LocationSearch_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearch()
    }
}
