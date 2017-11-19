//
//  ViewController.swift
//  SocketServer
//
//  Created by Zhou Kang on 2017/11/19.
//  Copyright © 2017年 Zhou Kang. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var hintLabel: NSTextField!
    fileprivate lazy var serverMgr : ServerManager = ServerManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func startServer(_ sender: Any) {
        serverMgr.startServer()
        hintLabel.stringValue = "服务器已开启"
    }
    
    @IBAction func stopServer(_ sender: Any) {
        serverMgr.stopServer()
        hintLabel.stringValue = "服务器未开启"
    }
}

