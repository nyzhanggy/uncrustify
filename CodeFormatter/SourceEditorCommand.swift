//
//  SourceEditorCommand.swift
//  CodeFormatter
//
//  Created by zhanggy on 2019/1/2.
//  Copyright © 2019 xporter. All rights reserved.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {
  
    let formatter = CodeFormatter()
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        let userDefault =  UserDefaults.init(suiteName: "club.xporter.codeformatter")
        let config = userDefault?.value(forKey: "config") as? Dictionary<String, String>
        if let outputString = formatter.codeFormat(code: invocation.buffer.completeBuffer, configContent:config)
            {
            invocation.buffer.lines.removeAllObjects()
            
            var lines = outputString.components(separatedBy: "\n")
            if let lastLine = lines.last,lastLine.isEmpty {
                lines.removeLast()
            }
            invocation.buffer.lines.addObjects(from: lines)
            
            // Crashes Xcode when replacing `completeBuffer`
            //invocation.buffer.completeBuffer = outputString
            
            // If there is a no longer valid selection, Xcode crashes
            invocation.buffer.selections.removeAllObjects()
            // and it does the same if there aren't any selections, so we set the insertion point
            invocation.buffer.selections.add(XCSourceTextRange(start: XCSourceTextPosition(line: 0, column: 0),
                                                               end: XCSourceTextPosition(line: 0, column: 0)))
        }
        
        completionHandler(nil)
    }
    

   
}
