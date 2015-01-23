//
//  EdithLife.swift
//  CallingHeaven
//
//  Created by My Mac on 1/21/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct Edithlife {
    
    let factsArray = [
        
        "This is a bio about St. Edith",
        "This is a bio about St. Edith.",
        
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
