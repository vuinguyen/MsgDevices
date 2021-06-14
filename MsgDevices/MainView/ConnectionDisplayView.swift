//
//  ConnectionDisplayView.swift
//  MsgDevices
//
//  Created by Vui Nguyen on 6/14/21.
//

import SwiftUI

struct ConnectionDisplayView: View {
    var body: some View {
        VStack {
            Text("Connection State:")
                .font(.title)
            Text("Watch Connected!")
        }.padding()
    }
}

struct ConnectionDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionDisplayView()
    }
}
