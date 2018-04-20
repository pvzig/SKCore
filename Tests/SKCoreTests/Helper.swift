//
//  Helper.swift
//  SKCore
//
//  Created by Allan Vialatte on 19/04/2018.
//

import Foundation

struct Helper {
  static var rootPath: String {
    #if Xcode
    return ProcessInfo.processInfo.environment["RESOURCES_PATH"]!
    #else
    return "../Resources"
    #endif
  }
  
  struct JSONData {
    static let channel          = try! Data(contentsOf: URL(fileURLWithPath: "\(Helper.rootPath)/channel.json"))
    static let conversation     = try! Data(contentsOf: URL(fileURLWithPath: "\(Helper.rootPath)/conversation.json"))
    static let file             = try! Data(contentsOf: URL(fileURLWithPath: "\(Helper.rootPath)/file.json"))
    static let group            = try! Data(contentsOf: URL(fileURLWithPath: "\(Helper.rootPath)/group.json"))
    static let im               = try! Data(contentsOf: URL(fileURLWithPath: "\(Helper.rootPath)/im.json"))
    static let mpim             = try! Data(contentsOf: URL(fileURLWithPath: "\(Helper.rootPath)/mpim.json"))
    static let user             = try! Data(contentsOf: URL(fileURLWithPath: "\(Helper.rootPath)/user.json"))
    static let usergroup        = try! Data(contentsOf: URL(fileURLWithPath: "\(Helper.rootPath)/usergroup.json"))
    static let events           = try! Data(contentsOf: URL(fileURLWithPath: "\(Helper.rootPath)/events.json"))
  }
}
