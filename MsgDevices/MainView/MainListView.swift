//
//  MainListView.swift
//  MsgDevices
//
//  Created by Vui Nguyen on 6/6/21.
//

import SwiftUI

struct MainListView: View {
    let msgModel = MsgModel()
    let msgList = MsgModel().msgItems
    var body: some View {

        NavigationView {
        List(msgList) { msg in
            Button(action: {
                msgModel.runCommand(msgItem: msg)
            }, label: {
                Text(msg.name)
            })
        }
        .navigationBarTitle("Message Commands:")
    } // end of view
        }

}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
    }
}
