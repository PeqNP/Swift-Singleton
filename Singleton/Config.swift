/**
 This is an interesting method where the properties of the singleton are carved out and put into a struct. This allows you to 'reset' the properties of the class. This allows you to set default values when not testing, and providing testing values at test time.
 
 @copyright © 2016 Upstart Illustration LLC. All rights reserved.
 */

import Foundation

struct ConfigData {
    let apiKey: String
    let apiSecret: String
}

class Config {
    static let sharedInstance = Config()
    
    private var data: ConfigData!
    
    private init() {
        self.data = ConfigData(apiKey: "secret", apiSecret: "sauce")
    }
    
    public func reset(data: ConfigData) {
        self.data = data
    }
    
    public func getHash() -> String {
        let fakeHash = data.apiKey + data.apiSecret
        return fakeHash
    }
}
