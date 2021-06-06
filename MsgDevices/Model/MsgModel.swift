//
//  MsgModel.swift
//  MsgDevices
//
//  Created by Vui Nguyen on 6/6/21.
//

import Foundation

struct MsgItem: Identifiable {
    var id: Int
    var name: String
    var description: String?
}

struct MsgModel {
    var msgItems:[MsgItem] = [
        MsgItem(id: 0, name: "Connect to watch", description: "Connect to watch"),
        MsgItem(id: 1, name: "Disconnect from watch", description: "Disconnect from watch"),
        MsgItem(id: 2, name: "Send Direct Message", description:"Send Direct Message"),
        MsgItem(id: 3, name: "Send Message in Background", description:"Send Message in Background"),
    ]
}

