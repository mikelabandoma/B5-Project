import SwiftUI

struct ArtemisMainPage: View {
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text("Welcome to Artemis!")
                .bold()
                .font(.title)
            Text("Click the icon buttons to interact with our app.")
        }
        .padding()
    }
}

struct ArtemisMainPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


