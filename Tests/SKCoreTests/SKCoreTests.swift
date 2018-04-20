import XCTest
@testable import SKCore

final class SKCoreTests: XCTestCase {
  
  
  func testEvents() {
    let data = Helper.JSONData.events
    let json:[String:Any] = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
    let events = self.eventsKeys.map { json[$0] as! [String: Any] }.map { Event($0) }
    
  }
  
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
  
  let eventsKeys = [
    // Bot Event
    "bot_added","bot_changed",
    // Channel Event
    "channel_archive","channel_created","channel_deleted",
    "channel_joined", "channel_left", "channel_marked",
    "channel_rename","channel_unarchive",
    // Group Event
    "group_archive","group_close","group_joined",
    "group_left", "group_marked","group_rename","group_unarchive",
    // Im Event
    "im_close","im_created","im_marked","im_open", "manual_presence_change",
    // Message Event
    "message::channel_join", "message::channel_leave", "message::channel_name",
    "message::group_join", "message::group_name", "message::group_unarchive",
    "message::message_changed", "message::message_deleted",
    // Preference Event
    "pref_change", "presence_change",
    // Reaction Event
    "reaction_added", "reaction_removed",
    // Team Event
    "team_domain_change", "team_join", "team_pref_change",
    "team_rename",
    // User Event
    "user_change", "user_typing"
  ]
  
  
  
  static var allTests = [
    ("testChannel", testChannel),
    ("testConversation", testConversation),
    ("testFile", testFile),
    ("testGroup", testGroup),
    ("testIm", testIm),
    ("TestMpim", testMpim),
    ("testUser", testUser),
    ("testUserGroup", testUserGroup),
    ("testEvents",testEvents)
  ]
}
