//
//  WatchMsgModel.swift
//  MsgDevicesWatch Extension
//
//  Created by Vui Nguyen on 6/15/21.
//

import Foundation
import SwiftUI
import Combine


protocol RunCommand {
    func runCommand(msgItem: MsgItem)
}

enum MsgCommand {
    case connect
    case disconnect
    case sendDirect
    case sendBackground
}

enum ConnectionState {
    case phoneDisconnected
    case phoneConnected
    case userNotLoggedIn
    case userLoggedIn
}

struct MsgItem: Identifiable {
    var id: Int
    var name: String
    var description: String?
    var msgCommand: MsgCommand
}

struct MsgModel {
    var msgItems:[MsgItem] = [
       // MsgItem(id: 0, name: "Connect to phone", description: "Connect to phone", msgCommand: .connect),
       // MsgItem(id: 1, name: "Disconnect from phone", description: "Disconnect from phone", msgCommand: .disconnect),
        MsgItem(id: 2, name: "Direct Send", description:"Send Direct Message", msgCommand: .sendDirect),
        MsgItem(id: 3, name: "Background Send", description:"Send Message in Background", msgCommand: .sendBackground),
    ]
}

extension MsgModel: RunCommand {
    func runCommand(msgItem: MsgItem) {
        switch msgItem.msgCommand {
        case .connect:
            connectPhone()
        case .disconnect:
            disconnectPhone()
        case .sendDirect:
            sendDirect()
        case .sendBackground:
            sendBackground()
        }
    }

    func connectPhone() {
        print("connect to phone!")
    }

    func disconnectPhone() {
        print("disconnect from phone!")
    }

    func sendDirect() {
        print("send direct message")
    }

    func sendBackground() {
        print("send background message")
    }
}
