//
//  ConfigParser.swift
//  UncrustifyConfig
//
//  Created by zhanggy on 2018/11/8.
//  Copyright © 2018 xporter. All rights reserved.
//

import Foundation
/**
 category: 0
 catagoryName: Spacing options
 description: <html></html>
 editorType: multiple|numeric|boolean
 options: []
 callName: disable_processing_cmt=
 range: 0...3
 value:   0
 valueDefault: 0
 */


class ConfigModel: Codable {
    var name: String?
    var category: Int = 0
    var descriptionHTML: String?
    var editorType: String?
    var value: String?
    var valueDefault: String?
    var callName: String?
    var options: [String]?
    var minVal: Int?
    var maxVal: Int?
}

class HeaderModel: Codable {
    var fileTypes: [String] = []
    var categories: [String] = []
}


class ConfigCategoryModel {
    var categoryName = ""
    var configList : [ConfigModel] = []
}


class ConfigParser {
    static let share = ConfigParser()
    
    var configInfo: [ConfigCategoryModel]?
    var defauleConfig: [String:String] = Dictionary()
    
    init() {
        guard let contentUrl = Bundle.main.url(forResource: "default", withExtension: "config") else {
            return
        }
        
        guard let content = try? String.init(contentsOf: contentUrl, encoding: .utf8) else {
            return
        }
        let res = parser(configContent: content)
        configInfo = res.configCategoryList
        
    }
    
    private func parser(configContent: String) -> (header:HeaderModel, configCategoryList:[ConfigCategoryModel]) {
        
        let components = configContent.components(separatedBy: "\n\n")
        var header : HeaderModel = HeaderModel()
        var configCategoryList : [ConfigCategoryModel] = []
        
        var configModelDict: [String:ConfigCategoryModel] = Dictionary()
        for each in components {
            
            let parserResult = parserItem(content: each)
            if parserResult.isHeader {
                if let headerRes = parserResult.config as? HeaderModel {
                    header = headerRes
                }
            } else {
                if let configModel = parserResult.config as? ConfigModel {
                    if configModel.category >= 0 && configModel.category < header.categories.count {
                        let categoryName = header.categories[configModel.category]
                        if let configCategoryModel = configModelDict[categoryName]  {
                            configCategoryModel.configList.append(configModel)
                        } else {
                            let configCategoryModel = ConfigCategoryModel()
                            configCategoryModel.categoryName = categoryName
                            configCategoryModel.configList.append(configModel)
                            configCategoryList.append(configCategoryModel)
                            configModelDict[categoryName] = configCategoryModel
                        }
                        if let key = configModel.callName,let value = configModel.value {
                            defauleConfig[key] = value
                        }
                    }
                }
            }
        }
        return (header,configCategoryList)
    }
    
    private func parserItem(content: String) ->(isHeader: Bool, config: Any?) {
        let components = content.components(separatedBy: CharacterSet.newlines)
        var configDict = Dictionary<String, String>()
        for each in components {
            if each.hasPrefix("[") && each.hasSuffix("]"){
                configDict["name"] = each
            } else if let range = each.range(of: "=") {
                let key = String(each[..<range.lowerBound])
                let value = String(each[range.upperBound..<String.Index.init(encodedOffset: each.count)])
                configDict[key] = value
            }
        }
        if configDict["name"] == "[header]" {
            let config = parserHeader(header: configDict)
            return (true,config)
        } else {
            let config = parserConfigItem(configItem: configDict)
            return (false,config)
        }
    }
    private func parserHeader(header: [String: String]) -> HeaderModel? {
        
        var headerDict = Dictionary<String, Any>()
        if let categoriesString = header["categories"] {
            let categories = categoriesString.components(separatedBy: "|")
            headerDict["categories"] = categories
        }
        
        if let fileTypesString = header["fileTypes"] {
            let fileTypes = fileTypesString.components(separatedBy: "|")
            headerDict["fileTypes"] = fileTypes
        }
        
        if let jsonData = try? JSONSerialization.data(withJSONObject: headerDict, options: []) {
            return try? JSONDecoder().decode(HeaderModel.self, from: jsonData)
        }
        
        return nil
    }
    
    private func parserConfigItem(configItem:[String: String]) -> ConfigModel? {
        let configModel = ConfigModel()
        guard let editorType = configItem["EditorType"] else {
            return nil
        }
        if var name = configItem["name"] {
            name.removeFirst()
            name.removeLast()
            configModel.name = name
        }
        
        
        configModel.editorType = editorType
        if let description = configItem["Description"] {
            configModel.descriptionHTML = description.replacingOccurrences(of: "\"", with: "")
        }
        
        if let category = configItem["Category"] {
            configModel.category = Int(category) ?? 0
        }
        
        if var choicesString = configItem["Choices"] {
            choicesString = choicesString.replacingOccurrences(of: "\"", with: "")
            let choices = choicesString.components(separatedBy: "|")
            
            var options : [String] = []
            if let first = choices.first {
                let components = first.components(separatedBy: "=")
                configModel.callName = components.first
            }
            
            for each in choices {
                let components = each.components(separatedBy: "=")
                if let optionValue = components.last {
                    options.append(optionValue)
                }
            }
            
            configModel.options = options
        }
        
        if let trueFalse = configItem["TrueFalse"] {
            let choices = trueFalse.components(separatedBy: "|")
            
            var options : [String] = []
            if let first = choices.first {
                let components = first.components(separatedBy: "=")
                configModel.callName = components.first
            }
            
            for each in choices {
                let components = each.components(separatedBy: "=")
                if let optionValue = components.last {
                    options.append(optionValue)
                }
            }
            
            configModel.options = options
        }
        
        if editorType == "numeric" {
            if let minValStr = configItem["MinVal"],let maxValStr = configItem["MaxVal"],
                let minVal = Int(minValStr) , let maxVal = Int(maxValStr) {
                configModel.minVal = minVal
                configModel.maxVal = maxVal
            }
            
        }
        if let valueDefault = configItem["ValueDefault"] {
            configModel.valueDefault = valueDefault
        } else {
            configModel.valueDefault = ""
        }
        
        if let callName = configItem["CallName"] {
            configModel.callName = callName.replacingOccurrences(of: "\"", with: "").replacingOccurrences(of: "=", with: "")
        }
       
        configModel.value = parserConfigValue(configModel: configModel,inputValue: configModel.valueDefault)
        
        return configModel
    }
    
    func parserConfigValue(configModel: ConfigModel,inputValue: String?) -> String {
        guard let editorType = configModel.editorType  else {
            return ""
        }
        
        guard let inputValue = inputValue else {
            return ""
        }
        if editorType == "multiple" || editorType == "boolean" {
            if let index = Int(inputValue),
                let options = configModel.options,
                index >= 0 && index < options.count {
                
                return  options[index]
            }
        } else if editorType == "string" {
            return  "\"" + inputValue + "\""
        } else if editorType == "numeric" {
            if let minVal =  configModel.minVal , let maxVal = configModel.maxVal,
                var value = Int(inputValue) {
                
                if value > maxVal {
                    value = maxVal
                } else if value < minVal{
                    value = minVal
                }
                return String(value)
            }
        }
        
        return ""
    }
    
    func parserConfigFile(content: String?) -> [String:String]? {
        guard let content = content else {
            return nil
        }
        let lineComponents = content.components(separatedBy: CharacterSet.newlines)
        var configDict: [String:String] = Dictionary()
        for each in lineComponents {
            if each.count <= 0 && each.hasPrefix("#") {
                continue
            }
            let components = each.components(separatedBy: "#")
            
            if components.count > 0 {
                let config = components[0]
                let keyValue = config.components(separatedBy: "=")
                if keyValue.count == 2 {
                    let key = keyValue[0].trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                    let value = keyValue[1].trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                    configDict[key] = value
                }
            }
        }
        return configDict
    }
    
    
    func creatConfigFile(config: [String: String]?) -> String {
        guard let config = config else {
            return ""
        }
        var configString = ""
        for each in config {
            configString += (each.key + "=" + each.value + "\n")
        }
        return configString
    }
}
