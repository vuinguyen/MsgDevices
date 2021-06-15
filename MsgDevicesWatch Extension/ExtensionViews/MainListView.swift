//
//  MainListView.swift
//  MsgDevicesWatch Extension
//
//  Created by Vui Nguyen on 6/15/21.
//

import SwiftUI

struct MainListView: View {
    var body: some View {
        let msgModel = MsgModel()
        let msgList = MsgModel().msgItems


        NavigationView {
            List(msgList) { msg in
                Button(action: {
                    msgModel.runCommand(msgItem: msg)
                }, label: {
                    Text(msg.name)
                })
            }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
    }
}
