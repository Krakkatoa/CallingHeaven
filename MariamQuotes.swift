//
//  MariamQuotes.swift
//  CallingHeaven
//
//  Created by My Mac on 1/27/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct MariamQuotes {
    let factsArray = [
        
        "Quotes coming soon",
        
        "Blah Blah",
        
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
}

