import SwiftUI

struct ArtemisMainPage: View {
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text("Welcome, \(name)!")
            Button("Check out our weekly inspiring woman of the day!") {
                //go to womansspotlight
            }
                    .bold()
                    .frame(width: 250,
                           height:50,
                           alignment: .center)
                    .background(Color.pink)
                    .foregroundColor(.white)
            
            NavigationLink {
                (WomansSpotlight())
            } label: {
                Text("Check out our weekly inspiring woman of the day!")
            }
            
            Button("Check out these top educational resources!") {
                //go to info
            }
                    .bold()
                    .frame(width: 250,
                           height:50,
                           alignment: .center)
                    .background(Color.pink)
                    .foregroundColor(.white)
            
            NavigationLink {
                (Info())
            } label: {
                Text("Check out these top educational resources!")
            }
            
            Button("Periods are something you hate to have, but are not scared to have.") {
                //go to quotes
            }
                    .bold()
                    .frame(width: 250,
                           height:50,
                           alignment: .center)
                    .background(Color.pink)
                    .foregroundColor(.white)
            
            NavigationLink {
                (QuoteOfTheDay())
            } label: {
                Text("Periods are something you hate to have, but are not scared to have.")
            }
            
            //end of buttons
        }
        .padding()
    }
}

struct ArtemisMainPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

