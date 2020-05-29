//
//  MainWindowController.swift
//  UncrustifyConfig
//
//  Created by zhanggy on 2018/11/20.
//  Copyright © 2018 xporter. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController,NSWindowDelegate {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        
        
    }

    func windowWillClose(_ notification: Notification) {
        NSApplication.shared.terminate(nil)
    }
}
