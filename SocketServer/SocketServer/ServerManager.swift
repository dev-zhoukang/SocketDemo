//
//  ServerManager.swift
//  SocketServer
//
//  Created by Zhou Kang on 2017/11/19.
//  Copyright © 2017年 Zhou Kang. All rights reserved.
//

import Cocoa

class ServerManager: NSObject {
    fileprivate lazy var serverSocket : TCPServer = TCPServer(addr: "0.0.0.0", port: 8888)
}

extension ServerManager {
    func startServer() {
        serverSocket.listen()
        
        DispatchQueue.global().async {
            if let client = self.serverSocket.accept() {
                print("接收到一个客户端")
            }
        }
    }
    func stopServer() {
        
    }
}
