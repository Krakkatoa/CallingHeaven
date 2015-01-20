//
//  FrancisQuotes.swift
//  CallingHeaven
//
//  Created by My Mac on 11/27/14.
//  Copyright (c) 2014 Carmel Heart Media. All rights reserved.
//

import Foundation
struct FrancisQuotes {
    
    let factsArray = [
        
        "Let's all go to the lobby.",
        
        "Beans, beans, good for your heart.",
        
        "Blah Blah Blah Yabba Doo",
        
        "I talk to animals.",
        
        "Blah Doo",
        
        "Roses are red.",
        
        "Blah",
        
        "I will conquer the universe.",
        
        "Blah Kibbles and Bits",
    ]
    
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}


