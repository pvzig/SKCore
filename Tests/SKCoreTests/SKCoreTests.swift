import XCTest
@testable import SKCore

final class SKCoreTests: XCTestCase {
  
  
  static var allTests = [
    ("testChannel", testChannel),
    ("testConversation", testConversation),
    ("testFile", testFile),
    ("testGroup", testGroup),
    ("testIm", testIm),
    ("TestMpim", testMpim),
    ("testUser", testUser),
    ("testUserGroup", testUserGroup),
    ]
  
  
  func testChannel() {
    let data = Helper.JSONData.channel
    let json:[String:Any] = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
    let channel = Channel(channel: json)
    XCTAssertNotNil(channel)
  }
  
  func testConversation() {
    let data = Helper.JSONData.conversation
    let json:[String:Any] = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
    let channel = Channel(channel: json["channel"] as?[String : Any])
    XCTAssertNotNil(channel)
  }
  
  func testFile() {
    let data = Helper.JSONData.file
    let json:[String:Any] = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
    let file = File(file: json)
    XCTAssertNotNil(file)
  }
  
  func testGroup() {
    let data = Helper.JSONData.group
    let json:[String:Any] = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
    let channel = Channel(channel: json)
    XCTAssertNotNil(channel)
  }
  
  
  func testIm() {
    let data = Helper.JSONData.im
    let json:[String:Any] = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
    let channel = Channel(channel: json)
    XCTAssertNotNil(channel)
  }
  
  func testMpim() {
    let data = Helper.JSONData.mpim
    let json:[String:Any] = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
    let channel = Channel(channel: json)
    XCTAssertNotNil(channel)
  }
  
  func testUser() {
    let data = Helper.JSONData.user
    let json:[String:Any] = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
    let user = User(user: json)
    XCTAssertNotNil(user)
  }
  
  func testUserGroup() {
    let data = Helper.JSONData.usergroup
    let json:[String:Any] = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
    let userGroup = UserGroup(userGroup: json)
    XCTAssertNotNil(userGroup)
  }
}
