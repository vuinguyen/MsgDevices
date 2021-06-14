//
//  ContentView.swift
//  MsgDevices
//
//  Created by Vui Nguyen on 6/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ConnectionDisplayView()
            ActivityDisplayView()
            MainListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
