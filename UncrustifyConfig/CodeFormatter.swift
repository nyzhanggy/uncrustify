//
//  CodeFormater.swift
//  UncrustifyConfig
//
//  Created by zhanggy on 2018/11/19.
//  Copyright © 2018 xporter. All rights reserved.
//

import Cocoa



class CodeFormatter: NSObject {
    var codeLaunage: String?
    
    func codeFormat(code: String?,configPath: String?) -> String? {
        guard let code = code else {
            formatError(error: "No Code Content")
            return nil
        }
        guard let uncrustifyURL = Bundle.main.path(forResource: "uncrustify", ofType: nil) else {
            formatError(error: "Not Found Command: uncrustify ")
            return nil
        }
        
        
        let language =  "-l" + "oc"
        var arguments = [language]
        if let configPath = configPath {
            let config =  "-c" + configPath
            arguments.append(config)
            
        }
        return run(uncrustifyURL, arguments: arguments, stdin: code)
    }
    
    func codeFormat(code: String?, configContent:[String:String]?) -> String? {
        guard let code = code else {
            formatError(error: "No Code Content")
            return nil
        }
        var confingStr = ""
        
        if let configContent = configContent  {
            for each in configContent {
                confingStr += (each.key + "=" + each.value + "\n")
            }
        }
        
        guard let configPath = saveFileToTemp(content: confingStr)  else {
            formatError(error: "Save Config Failed")
            return nil
        }
        
        guard let uncrustifyURL = Bundle.main.path(forResource: "uncrustify", ofType: nil) else {
            formatError(error: "Not Found Command: uncrustify ")
            return nil
        }
        
        let config =  "-c" + configPath
        let language =  "-l" + "oc"
        let arguments = [config,language]
        return run(uncrustifyURL, arguments: arguments, stdin: code)
        
    }
    
    func codeFormat(codeFilePath: String?, configContent:[String:String]?) -> String? {
        guard let codeFilePath = codeFilePath else {
            formatError(error: "No Code File Path")
            return nil
        }
        var confingStr = ""
        
        if let configContent = configContent  {
            for each in configContent {
                confingStr += (each.key + "=" + each.value + "\n")
            }
        }
        
        guard let configPath = saveFileToTemp(content: confingStr)  else {
            formatError(error: "Save Config Failed")
            return nil
        }

        return codeFormat(codeFilePath: codeFilePath, configPath: configPath)
    }
    
    func codeFormat(codeFilePath: String?,  configPath: String?) -> String? {
        guard let codeFilePath = codeFilePath else {
            formatError(error: "No Code File Path")
            return nil
        }
        guard let configPath = configPath else {
            formatError(error: "No Config File Path")
            return nil
        }
        guard let uncrustifyURL = Bundle.main.path(forResource: "uncrustify", ofType: nil) else {
            formatError(error: "Not Found Command: uncrustify ")
            return nil
        }
        
        let config =  "-c" + configPath
        let file =  "-f" + codeFilePath
        let language =  "-l" + "oc"
        let arguments = [config,file,language]
        return run(uncrustifyURL, arguments: arguments, stdin: "")

    }
    
    private func run(_ commandPath: String, arguments: [String], stdin: String) -> String? {
        let errorPipe = Pipe()
        let outputPipe = Pipe()
        
        let task = Process()
        task.standardError = errorPipe
        task.standardOutput = outputPipe
        task.launchPath = commandPath
        task.arguments = arguments
        
        let inputPipe = Pipe()
        task.standardInput = inputPipe
        let stdinHandle = inputPipe.fileHandleForWriting
        
        if let data = stdin.data(using: .utf8) {
            stdinHandle.write(data)
            stdinHandle.closeFile()
        }
        
        task.launch()
        task.waitUntilExit()
        
        errorPipe.fileHandleForReading.readDataToEndOfFile()
        
        let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
        return String(data: outputData, encoding: .utf8)
    }
    
    
 
    private func formatError(error: String) {
        print(error)
    }
 
    
    private func saveFileToTemp(content: String?) -> String? {
        guard let content = content else {
            return nil
        }
        let guid = ProcessInfo.processInfo.globallyUniqueString
        let path = NSTemporaryDirectory() + guid
        if let data = content.data(using: .utf8) {
            if FileManager.default.createFile(atPath: path, contents: data, attributes: nil)  {
                return path
            }
        }
        return nil
    }
  
}
