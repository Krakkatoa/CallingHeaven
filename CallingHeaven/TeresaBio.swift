//
//  TeresaBio.swift
//  CallingHeaven
//
//  Created by My Mac on 1/11/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct TeresaBio {
    
    let factsArray = [
        
        "This is a bio about St. Teresa",
        "This is a bio about St. Teresa.",
        
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
