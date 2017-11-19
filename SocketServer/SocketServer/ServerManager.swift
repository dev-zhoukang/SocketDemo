//
//  ServerManager.swift
//  SocketServer
//
//  Created by Zhou Kang on 2017/11/19.
//  Copyright © 2017年 Zhou Kang. All rights reserved.
//

import Cocoa

class ServerManager: NSObject {
    fileprivate lazy var serverSocket : TCPServer = TCPServer(addr: "192.168.2.101", port: 7878)
}

extension ServerManager {
    func startServer() {
        guard serverSocket.listen().0 else {
            print("监听失败")
            return
        }
        DispatchQueue.global().async {
            if let client = self.serverSocket.accept() {
                print("接收到一个客户端")
            }
        }
    }
    func stopServer() {
        
    }
}
