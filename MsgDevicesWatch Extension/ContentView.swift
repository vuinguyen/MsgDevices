//
//  ContentView.swift
//  MsgDevicesWatch Extension
//
//  Created by Vui Nguyen on 6/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Status")
                .padding()
            Text("Messages")
            Button(action: {}, label: {
                Text("Direct Send")
            })
            Button(action: {}, label: {
                Text("Background Send")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
