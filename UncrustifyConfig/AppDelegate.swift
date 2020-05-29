//
//  AppDelegate.swift
//  UncrustifyConfig
//
//  Created by zhanggy on 2018/11/8.
//  Copyright © 2018 xporter. All rights reserved.
//

import Cocoa
extension NSNotification.Name {
    static let openFile = NSNotification.Name.init("openFile")
    static let saveFile = NSNotification.Name.init("saveFile")
    static let loadConfig = NSNotification.Name.init("loadConfig")
    static let deleteConfig = NSNotification.Name.init("deleteConfig")
    static let saveConfig = NSNotification.Name.init("saveConfig")
    static let clearAll = NSNotification.Name.init("clearAll")
}


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func openFile(_ sender: Any) {
        let openPanel = NSOpenPanel()
        openPanel.allowedFileTypes = ["h","m"]
        if let window = NSApplication.shared.mainWindow?.windowController?.window {
            openPanel.beginSheetModal(for: window) { (result) in
                if result == NSApplication.ModalResponse.OK {
                    if var filePath = openPanel.url?.absoluteString {
                        filePath = filePath.replacingOccurrences(of: "file://", with: "")
                        NotificationCenter.default.post(name: .openFile , object: nil, userInfo: ["filePath":filePath])
                    }
                }
            }
        }
    }
    @IBAction func deleteUserConfig(_ sender: Any) {
        NotificationCenter.default.post(name: .deleteConfig , object: nil, userInfo: nil)
        
    }
    @IBAction func saveFile(_ sender: Any) {
        NotificationCenter.default.post(name: .saveFile , object: nil, userInfo: nil)
    }
    @IBAction func exportConfig(_ sender: Any) {
        
        let savePanel = NSSavePanel()
        savePanel.nameFieldStringValue = "uncrustify.cfg"
        if let window = NSApplication.shared.mainWindow?.windowController?.window {
            savePanel.beginSheetModal(for: window) { (result) in
                if result == NSApplication.ModalResponse.OK {
                    if var filePath = savePanel.url?.absoluteString {
                        filePath = filePath.replacingOccurrences(of: "file://", with: "")
                        NotificationCenter.default.post(name: .saveConfig , object: nil, userInfo: ["filePath":filePath])
                    }
                }
            }
        }
        
        NotificationCenter.default.post(name: .saveConfig , object: nil, userInfo: nil)
    }
    
    @IBAction func clearAll(_ sender: Any) {
        NotificationCenter.default.post(name: .clearAll , object: nil, userInfo: nil)
    }
    @IBAction func loadConfigFile(_ sender: Any) {
        let openPanel = NSOpenPanel()
        openPanel.allowedFileTypes = ["cfg"]
        if let window = NSApplication.shared.mainWindow?.windowController?.window {
            openPanel.beginSheetModal(for: window) { (result) in
                if result == NSApplication.ModalResponse.OK {
                    if var filePath = openPanel.url?.absoluteString {
                        filePath = filePath.replacingOccurrences(of: "file://", with: "")
                        NotificationCenter.default.post(name: .loadConfig , object: nil, userInfo: ["filePath":filePath])
                    }
                }
            }
        }   
    }
}

