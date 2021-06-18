    
import Foundation


@objc(DownloadManagerPlugin) class DownloadManagerPlugin : CDVPlugin { 


    @objc
    func enqueue(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func query(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        let results = [Any]()
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: results)
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func remove(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: 1)
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func addCompletedDownload(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func fetchSpeedLog(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        let speedLogs = [String: Int]()
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: speedLogs)
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

}