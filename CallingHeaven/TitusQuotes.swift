//
//  TitusQuotes.swift
//  CallingHeaven
//
//  Created by My Mac on 1/30/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation


struct TitusQuotes {
    
    let factsArray = [
        
"He who wants to win the world for Christ must have the courage to come in conflict with it.",


]


func randomFact() -> String {
    var unsignedArrayCount = UInt32(factsArray.count)
    var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
    var randomNumber = Int(unsignedRandomNumber)
    
    return factsArray[randomNumber]
}

}



