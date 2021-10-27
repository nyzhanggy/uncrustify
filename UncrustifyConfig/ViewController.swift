//
//  ViewController.swift
//  UncrustifyConfig
//
//  Created by zhanggy on 2018/11/8.
//  Copyright © 2018 xporter. All rights reserved.
//

import Cocoa


class ViewController: NSViewController,NSOutlineViewDelegate,NSOutlineViewDataSource,NSSearchFieldDelegate {
    
    @IBOutlet weak var configName: NSTextField!
    @IBOutlet weak var configDesc: NSTextField!
    @IBOutlet weak var optionsSegment: NSSegmentedControl!
    
    @IBOutlet weak var optionsSegmentTitle: NSTextField!
    @IBOutlet weak var inputValue: NSTextField!
    @IBOutlet weak var configListView: NSOutlineView!
    @IBOutlet weak var inputValueTitle: NSTextField!
    @IBOutlet var formatCodeView: NSTextView!
    
    private var defaultConfig: [ConfigCategoryModel] = Array()
    private var showConfigList: [ConfigCategoryModel] = Array()
    private var filterConfig: [ConfigCategoryModel] = Array()
    private var userConfig: [String:String] = Dictionary()
    private var selectedConfigItem: ConfigModel?
    
    private let codeFormatter = CodeFormatter()
    
    @IBOutlet weak var segmentedController: NSSegmentedControl!
    @IBOutlet weak var configDetailView: NSView!
    @IBOutlet weak var searchField: NSSearchField!
    
    //MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addNotification()
        let userDefault =  UserDefaults.init(suiteName: "club.xporter.codeformatter")
        if let config = userDefault?.value(forKey: "config") as? Dictionary<String, String> {
            userConfig = config
        }
        
        if let config = ConfigParser.share.configInfo {
            defaultConfig = config
        }
        
        inputValue.delegate = self
        segmentedController.selectedSegment = 0
        showConfigList = defaultConfig
        configListView.reloadData()
        
        
    }
    
    deinit {
        removeNotification()
    }
    override func keyUp(with event: NSEvent) {
        super.keyUp(with: event)
        
    }
    //MARK: - notification
    func addNotification()  {
        NotificationCenter.default.addObserver(self, selector: #selector(openFile(notification:)), name: .openFile, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(saveFile(notification:)), name: .saveFile, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(loadConfig(notification:)), name: .loadConfig, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(saveConfig(notification:)), name: .saveConfig, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(clearAll(notification:)), name: .clearAll, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(deleteUserConfig(notification:)), name: .deleteConfig, object: nil)
        
    }
    
    func removeNotification() {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func openFile(notification:Notification)  {
        if let filePath = notification.userInfo?["filePath"] as? String{
            changeWindowTitle(title: "Formatting...")
            renderFormatCodeView(formatterContent: codeFormatter.codeFormat(codeFilePath: filePath, configContent: userConfig))
        }
    }
    
    @objc private func saveFile(notification:Notification)  {
        changeWindowTitle(title: "Formatting...")
        renderFormatCodeView(formatterContent: codeFormatter.codeFormat(code: formatCodeView.string, configContent: userConfig))
    }
    
    @objc private func loadConfig(notification:Notification)  {
        if let filePath = notification.userInfo?["filePath"] as? String{
            let content = try? String.init(contentsOfFile: filePath, encoding: .utf8)
            if let config =  ConfigParser.share.parserConfigFile(content: content) {
                userConfig = config
                if let userDefault =  UserDefaults.init(suiteName: "club.xporter.codeformatter") {
                    userDefault.setValue(userConfig, forKey: "config")
                }
                configListView.reloadData()
                if formatCodeView.string.count > 0 {
                    changeWindowTitle(title: "Formatting...")
                    renderFormatCodeView(formatterContent: codeFormatter.codeFormat(code: formatCodeView.string, configContent: userConfig))
                }
            }
        }
    }
    
    @objc private func saveConfig(notification:Notification)  {
        if let filePath = notification.userInfo?["filePath"] as? String{
            let configString = ConfigParser.share.creatConfigFile(config: self.userConfig)
            let data = configString.data(using: .utf8)
            FileManager.default.createFile(atPath: filePath, contents: data, attributes: nil)
        }
    }
    
    @objc private func clearAll(notification:Notification)  {
        userConfig = Dictionary()
        configListView.reloadData()
        if formatCodeView.string.count > 0 {
            changeWindowTitle(title: "Formatting...")
            renderFormatCodeView(formatterContent: codeFormatter.codeFormat(code: formatCodeView.string, configContent: userConfig))
        }
    }
    
    @objc private func deleteUserConfig(notification:Notification) {
        if configListView.acceptsFirstResponder {
            removeValueForSelectedConfig()
        }
    }
    private func renderFormatCodeView(formatterContent: String?) {
        if let formatterContent = formatterContent {
            if let attributedString =  codeHighlightr(codeContent: formatterContent) {
                if formatCodeView.string.count > 0 {
                    formatCodeView.textStorage?.replaceCharacters(in: NSRange.init(location: 0, length: formatCodeView.string.count), with: attributedString)
                } else {
                    formatCodeView.textStorage?.append(attributedString)
                }
                resetWindowTitle()
            }
        }
    }
    
    private  func codeHighlightr(codeContent: String) -> NSAttributedString? {
        guard let highlightr = Highlightr() else {
            return nil
            
        }
        return highlightr.highlight(codeContent, as: nil, fastRender: true)
    }
    
    
    @objc func formatFailed(notification: Notification) {
        if let error = notification.userInfo?["error"] as? String{
            changeWindowTitle(title: error)
        } else {
            changeWindowTitle(title: "Format Failed")
        }
    }
    //MARK: - update title
    private func changeWindowTitle(title: String) {
        NSApplication.shared.mainWindow?.title = title
    }
    
    private func resetWindowTitle() {
        NSApplication.shared.mainWindow?.title = "Uncrustify"
    }
    
    @IBAction func configTypeChanged(_ sender: NSSegmentedControl) {
        reloadConfig(onlyUserConfig: sender.selectedSegment == 1)
    }
    
    //MARK: - value changed
    @IBAction func segmentValueChanged(_ sender: Any) {
        if let selectedConfigItem = self.selectedConfigItem {
            let newValue = String(optionsSegment.selectedSegment)
            if selectedConfigItem.valueDefault == newValue {
                removeValueForSelectedConfig()
                return
            }
            let newConfigValue = ConfigParser.share.parserConfigValue(configModel: selectedConfigItem, inputValue: newValue)
            
            changeConfig(key: selectedConfigItem.callName , value: newConfigValue)
        }
    }
    
    func controlTextDidEndEditing(_ obj: Notification) {
        if let textFiled = obj.object as? NSTextField {
            if textFiled == inputValue {
                if let selectedConfigItem = self.selectedConfigItem {
                    let newValue = inputValue.stringValue
                    let newConfigValue = ConfigParser.share.parserConfigValue(configModel: selectedConfigItem, inputValue: newValue)
                    changeConfig(key: selectedConfigItem.callName , value: newConfigValue)
                }
            }
        }
    }
    
    func changeConfig(key: String?,value:String) {
        guard let key = key else {
            return
        }
        userConfig[key] = value
        configListView.reloadItem(selectedConfigItem)
        
        if let userDefault =  UserDefaults.init(suiteName: "club.xporter.codeformatter") {
            userDefault.setValue(userConfig, forKey: "config")
        }
        
        if formatCodeView.string.count > 0 {
            changeWindowTitle(title: "Formatting...")
            renderFormatCodeView(formatterContent: codeFormatter.codeFormat(code: formatCodeView.string, configContent: userConfig))
        }
    }
    
    func removeValueForSelectedConfig() {
        guard let selectedConfigItem = self.selectedConfigItem else {
            return
        }
        if let callName = selectedConfigItem.callName {
            userConfig.removeValue(forKey: callName)
            configListView.reloadItem(selectedConfigItem)
            self.selectedConfigItem?.value = ConfigParser.share.parserConfigValue(configModel: selectedConfigItem, inputValue: selectedConfigItem.valueDefault)
            updateSelectedConfig()
            
            if let userDefault =  UserDefaults.init(suiteName: "club.xporter.codeformatter") {
                userDefault.setValue(userConfig, forKey: "config")
            }
        }
        
        if formatCodeView.string.count > 0 {
            changeWindowTitle(title: "Formatting...")
            renderFormatCodeView(formatterContent: codeFormatter.codeFormat(code: formatCodeView.string, configContent: userConfig))
        }
        
    }
    
    //MARK: - NSOutlineView
    func outlineView(_ outlineView: NSOutlineView, numberOfChildrenOfItem item: Any?) -> Int {
        if let item = item as? ConfigCategoryModel {
            return item.configList.count
        }
        return showConfigList.count
    }
    func outlineView(_ outlineView: NSOutlineView, isItemExpandable item: Any) -> Bool {
        return item is ConfigCategoryModel
    }
    
    
    func outlineView(_ outlineView: NSOutlineView, child index: Int, ofItem item: Any?) -> Any {
        if let item = item as? ConfigCategoryModel {
            return item.configList[index]
        }
        return  showConfigList[index]
    }
    
    func outlineView(_ outlineView: NSOutlineView, viewFor tableColumn: NSTableColumn?, item: Any) -> NSView? {
        var cell: NSTableCellView?
        if item is ConfigCategoryModel {
            cell = outlineView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "HeaderCell"), owner: self) as? NSTableCellView
            cell?.textField?.stringValue = (item as? ConfigCategoryModel)?.categoryName ?? "empty"
        } else {
            cell = outlineView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "DataCell"), owner: self) as? NSTableCellView
            cell?.textField?.stringValue = (item as? ConfigModel)?.name ?? "empty"
            
            if let callName =  (item as? ConfigModel)?.callName  {
                cell?.imageView?.isHidden = !userConfig.keys.contains(callName)
            } else {
                cell?.imageView?.isHidden = true
            }
        }
        
        return cell
    }
    
    
    func outlineView(_ outlineView: NSOutlineView, shouldSelectItem item: Any) -> Bool {
        if let config = item as? ConfigModel {
            selectedConfigItem = config
            updateSelectedConfig()
            configDetailView.isHidden = false
        } else if item is ConfigCategoryModel {
            
            if outlineView.isItemExpanded(item) {
                outlineView.animator().collapseItem(item)
            } else {
                outlineView.animator().expandItem(item)
            }
            
        }
        
        return item is ConfigModel
    }
    
    
    //MARK: - search
    @IBAction func searchFieldAction(_ sender: NSSearchField) {
        reloadConfig(keyword: sender.stringValue, onlyUserConfig: segmentedController.selectedSegment == 1)
    }
    
    func searchFieldDidEndSearching(_ sender: NSSearchField) {
        reloadConfig(onlyUserConfig: segmentedController.selectedSegment == 1)
    }
    
    func reloadConfig(keyword: String? = nil,onlyUserConfig: Bool = false) {
        if !onlyUserConfig && keyword == nil {
            showConfigList = defaultConfig
        } else {
            showConfigList.removeAll()
            for each in defaultConfig {
                let res = each.configList.filter { (model) -> Bool in
                    if onlyUserConfig {
                        if let callName =  model.callName {
                            if (!userConfig.keys.contains(callName)) {
                                return false
                            }
                        }
                    }
                    
                    if let keyword = keyword, keyword.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).count > 0 {
                        let isContainsKeyword = (model.name?.contains(keyword) ?? false) ||
                        (model.callName?.contains(keyword) ?? false) || (model.descriptionHTML?.contains(keyword) ?? false)
                        if !isContainsKeyword {
                            return false
                        }
                    }
                    return true
                }
                if res.count == 0 {
                    continue
                }
                let model = ConfigCategoryModel()
                model.categoryName = each.categoryName
                model.configList = res
                showConfigList.append(model)
            }
        }
        
        configListView.reloadData()
        configListView.expandItem(nil, expandChildren: true)
        
    }
    //MARK: - update selected config
    func updateSelectedConfig() {
        guard let config = selectedConfigItem else {
            return
        }
        if let configname = config.name,
           let callname = config.callName {
            configName.stringValue = configname + " (" + callname + ")"
        }
        let HTMLString = config.descriptionHTML ?? ""
        if let attributedString = transformHTMLToAttributedString(html: HTMLString) {
            configDesc.attributedStringValue =  attributedString
        } else {
            configDesc.stringValue = HTMLString
        }
        
        if let options = config.options {
            optionsSegment.segmentCount = options.count
            var index = 0
            for each in options {
                optionsSegment.setLabel(each, forSegment: index)
                index += 1
            }
            
            if let key = config.callName,
               let value = userConfig[key],
               let index = config.options?.firstIndex(of: value) {
                optionsSegment.selectedSegment = index
                
            } else if let valueDafault = config.valueDefault,
                      let index = Int(valueDafault) {
                optionsSegment.selectedSegment = index
            }
            inputValue.isHidden = true
            inputValueTitle.isHidden = true
            optionsSegmentTitle.isHidden = false
            optionsSegment.isHidden = false
        } else {
            inputValue.isHidden = false
            inputValueTitle.isHidden = false
            optionsSegmentTitle.isHidden = true
            optionsSegment.isHidden = true
            optionsSegment.segmentCount = 0
            if let key = config.callName,
               let value = userConfig[key] {
                inputValue.stringValue = value
            } else if let value = config.valueDefault {
                inputValue.stringValue = value
            }
        }
    }
    
    func transformHTMLToAttributedString(html: String?) -> NSAttributedString? {
        let HTMLString = html ?? ""
        if let HTMLData = HTMLString.data(using: .utf8),
           let attributedString =  NSMutableAttributedString.init(html: HTMLData, documentAttributes: nil) {
            attributedString.addAttribute(NSAttributedString.Key.font, value: NSFont.systemFont(ofSize: 14), range: NSRange.init(location: 0, length: attributedString.length))
            let paragraphStyle = NSMutableParagraphStyle.init()
            paragraphStyle.lineSpacing = 8
            let att = [NSAttributedString.Key.font: NSFont.systemFont(ofSize: 14),
                       NSAttributedString.Key.paragraphStyle: paragraphStyle ]
            attributedString.addAttributes(att, range: NSRange.init(location: 0, length: attributedString.length))
            configDesc.attributedStringValue =  attributedString
            
            return attributedString
        }
        return nil
    }
    
}

