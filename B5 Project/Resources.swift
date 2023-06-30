//
//  Resources.swift
//  B5 Project
//
//  Created by Mikela Bandoma on 6/30/23.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        ZStack {
            Color.init(red: 1, green: 0.890196078431375, blue: 0.8784313725490196)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("RESOURCES")
                    .fontWeight (.bold)
                    .font(.largeTitle)
                    .foregroundColor(Color("pinkOrange"))
                Spacer ()
                
                Image("period").resizable()
                    .aspectRatio(contentMode:.fit)
                Text("Learn more about periods at girlshelpinggirlsperiod.org!")
                    .fontWeight(.bold)
                    .foregroundColor(Color("pinkOrange"))
                    .multilineTextAlignment(.center)
  
                
                Image("mental health").resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Learn more about mental health at girlsempowermentnetwork.org!")
                    .fontWeight(.bold)
                    .foregroundColor(Color("pinkOrange"))
                    .multilineTextAlignment(.center)
                Image ("sexuality").resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Learn more about sexuality at aboutkidshealth.ca!")
                    .fontWeight(.bold)
                    .foregroundColor(Color("pinkOrange"))
                    .multilineTextAlignment(.center)
                

            }
        }
    }
    
    struct Resources_Previews: PreviewProvider {
        static var previews: some View {
            Resources()
        }
    }
}
