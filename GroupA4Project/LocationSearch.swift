//
//  LocationSearch.swift
//  GroupA4Project
//
//  Created by Hillary Trinh on 2023-07-19.
//

import SwiftUI

struct LocationSearch: View {
    
    func buttonPressed(){
        print("button pressed")
    }
    
    var body: some View {
        ZStack {
            Image("Galaxy Background")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            VStack{
                
                Button(action:{
                    buttonPressed()
                        
                })
                {Text("Click on your location!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.indigo)
                        .multilineTextAlignment(.center)
                    //test
                    //test
                    //test
                        //test
                }//test
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.098, saturation: 0.268, brightness: 0.932))
                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.roundedRectangle/*@END_MENU_TOKEN@*/)
                .border(Color.indigo, width: 4)
                Spacer()
                    .frame(height: 100)

             
               Button(action:{
                    buttonPressed()
                }){
                    Image("N 1")
                        .resizable()
                        .frame(width: 450, height: 150)
                        .padding(.horizontal)
                        
                }
                
                Spacer()
                    .frame(height:0)
                Button(action:{
                    buttonPressed()
                }){
                    Image("S 1")
                        .resizable()
                        .frame(width: 450, height: 150)
                        .padding(.horizontal)
                    
                    
                }
                Spacer()
                    .frame(height:40)
                .padding()
                
                
                
                
                
            }
            
        }
        
    }
    
    
    struct LocationSearch_Previews: PreviewProvider {
        static var previews: some View {
            LocationSearch()
        }
    }
}

