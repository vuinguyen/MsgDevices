//
//  MsgModel.swift
//  MsgDevices
//
//  Created by Vui Nguyen on 6/6/21.
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
    case watchDisconnected
    case watchConnected
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
        MsgItem(id: 0, name: "Connect to watch", description: "Connect to watch", msgCommand: .connect),
        MsgItem(id: 1, name: "Disconnect from watch", description: "Disconnect from watch", msgCommand: .disconnect),
        MsgItem(id: 2, name: "Send Direct Message", description:"Send Direct Message", msgCommand: .sendDirect),
        MsgItem(id: 3, name: "Send Message in Background", description:"Send Message in Background", msgCommand: .sendBackground),
    ]
}

extension MsgModel: RunCommand {
    func runCommand(msgItem: MsgItem) {
        switch msgItem.msgCommand {
        case .connect:
            connectWatch()
        case .disconnect:
            disconnectWatch()
        case .sendDirect:
            sendDirect()
        case .sendBackground:
            sendBackground()
        }
    }

    func connectWatch() {
        print("connect to watch!")
    }

    func disconnectWatch() {
        print("disconnect from watch!")
    }

    func sendDirect() {
        print("send direct message")
    }

    func sendBackground() {
        print("send background message")
    }
}

