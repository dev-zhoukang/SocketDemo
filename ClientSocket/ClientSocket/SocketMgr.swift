//
//  SocketMgr.swift
//  ClientSocket
//
//  Created by Zhou Kang on 2017/11/19.
//  Copyright © 2017年 Zhou Kang. All rights reserved.
//

import UIKit

class SocketMgr: NSObject {
    fileprivate var tcpClient : TCPClient
    init(addr: String, port: Int) {
        tcpClient = TCPClient(addr: addr, port: port)
    }
}

extension SocketMgr {
    func connectSocketServer() -> Bool {
        return tcpClient.connect(timeout: 10).0;
    }
}
