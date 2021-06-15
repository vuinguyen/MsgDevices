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
            Text("Messages")
            MainListView()
        } // end VStrack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
