//
//  ContentView.swift
//  B5 Project
//
//  Created by Mikela Bandoma on 6/27/23.
// hiii guyshfdhdtdydy

import SwiftUI



struct ContentView: View {
    
    
    @State var textFieldText: String = ""
    @State private var name = ""
    @State private var showLoginScreen = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.init(red: 1, green: 0.8901960784313725, blue: 0.8784313725490196)
                    .edgesIgnoringSafeArea(.all)
            
                
                VStack {
                    Text("WELCOME TO ARTEMIS. LET'S GET STARTED.")
                        .multilineTextAlignment(.center)
                        .font(.largeTitle)
                        .foregroundColor(Color("pinkOrange"))
                        //.font(.custom("Gilker-Regular", size: 10))
                    
                    TextField ("ENTER FIRST NAME", text: $textFieldText)
                        .padding()
                        .background(Color("peachyPink"))
                        .cornerRadius(10)
                        .foregroundColor(Color("pinkOrange"))
                        .font(.headline)
                    
                    Button("LET'S GO!".uppercased()) {
                        //Go to menu
                    }
                    .padding()
                    .frame (maxWidth:.infinity)
                    .background(Color("pinkOrange"))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.headline)
                    
                    NavigationLink {
                        (WomansSpotlight())
                    } label: {
                        Text("LET'S GO!")
                    }
                    }
                }
                .padding(50)
                
                /*
        init() {
            for familyName in UIFont.familyNames {
                print(familyName)
                        
                for fontName in UIFont.fontNames(forFamilyName: familyName) {
                            
                    print("-- \(fontName)")
                }
            }
        }
                 */
                //
                
            }
           
            ZStack {
                Color.pink
                    .edgesIgnoringSafeArea(.all)
            }
        }
        
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
