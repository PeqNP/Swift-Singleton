import XCTest

@testable import Singleton

class SingletonTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        let subject = User(name: "Trump", password: "Toupee")
        subject.logout()
    }
}
