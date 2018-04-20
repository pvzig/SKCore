//
// Action.swift
//
// Copyright © 2017 Peter Zignego. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

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
