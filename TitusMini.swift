//
//  TitusMini.swift
//  CallingHeaven
//
//  Created by My Mac on 7/17/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation


struct TitusMini {
    
    let factsArray = [
        
        "Testing Titus's Mini Bio",
        
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
