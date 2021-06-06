//
//  ActivityDisplayView.swift
//  MsgDevices
//
//  Created by Vui Nguyen on 6/6/21.
//

import SwiftUI

struct ActivityDisplayView: View {
    var body: some View {
        VStack {
            Text("Message Ran:")
                .font(.title)
            Text("Sample Message here!")
        }.padding()
    }
}

struct ActivityDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDisplayView()
    }
}
