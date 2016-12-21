import XCTest

@testable import Singleton

class SingletonTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testUser() {
        let subject = User(name: "Trump", password: "Toupee")
        subject.logout()
    }
    
    func testConfig() {
        let subject = Config.sharedInstance
        subject.reset(data: ConfigData(apiKey: "blob", apiSecret: "fish"))
        XCTAssertEqual(subject.getHash(), "blobfish")
    }
}
