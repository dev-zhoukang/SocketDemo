//
//  ViewController.swift
//  ClientSocket
//
//  Created by Zhou Kang on 2017/11/19.
//  Copyright © 2017年 Zhou Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    fileprivate lazy var socket : SocketMgr = SocketMgr(addr: "192.168.2.101", port: 8888)

    override func viewDidLoad() {
        super.viewDidLoad()
        if socket.connectSocketServer() {
            print("连接服务器成功")
        }
        else {
            print("连接服务器失败")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

