//
//  MainListView.swift
//  MsgDevices
//
//  Created by Vui Nguyen on 6/6/21.
//

import SwiftUI

struct MainListView: View {
    var msgList = MsgModel().msgItems
    var body: some View {
        NavigationView{
            List(msgList) { msg in
                Text(msg.name)
            }
            .navigationBarTitle("Message Commands:")
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
    }
}
