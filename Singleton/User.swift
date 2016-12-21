/**
 Illustrates how to create a singleton in Swift.
 
 References:
 - https://krakendev.io/blog/the-right-way-to-write-a-singleton
 - http://stackoverflow.com/questions/24024549/using-a-dispatch-once-singleton-model-in-swift/24147830#24147830
 - http://qiita.com/qmihara/items/a6b88b74fe64e1e05ca4 (this provides the correct example to provide values that can be read by preprocessor macro conditions)
 
 This shows a method to prevent others from initializing an instance of the User class when not testing, but still providing the ability to create an instance of the User at test time.
 
 This is a very ugly way of doing it.
 
 @copyright © 2016 Upstart Illustration LLC. All rights reserved.
 */

import Foundation

class User {
#if TEST
    static let sharedInstance = User(name: "", password: "")
#else
    static let sharedInstance = User()
#endif

    private let name: String
    private let password: String
    
#if TEST
    init(name: String, password: String) {
        self.name = name
        self.password = password
        
        initUser()
    }
#else
    private init() {
        self.name = "Eric"
        self.password = "TrumpsToupee"
    
        initUser()
    }
#endif
    
    private func initUser() {
        // Do common initialization stuff once...
    }
    
    public func login() {
        print("Logged in: \(name)")
    }
    
    public func logout() {
        print("Logged out: \(name)")
    }
}
