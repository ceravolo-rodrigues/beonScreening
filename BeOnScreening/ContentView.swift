//
//  ContentView.swift
//  BeOnScreening
//
//  Created by Paulo Antonio Ceravolo on 13/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var numberOfChoice: String = ""
    @State var apiResponse: String = ""
    
    var body: some View {
        VStack {
            Text(apiResponse).padding()
            TextField("Choose your number:",text: $numberOfChoice).padding()
            Button {
                if let number = Int(numberOfChoice){
                    NetworkManager.get(numberOfChoice: numberOfChoice) { value in
                       apiResponse = value
                    }
                } else {
                    // pops an error
                }
               
            }label: {
                Text("Search number")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
