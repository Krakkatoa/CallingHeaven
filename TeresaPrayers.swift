//
//  TeresaPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 12/6/14.
//  Copyright (c) 2014 Carmel Heart Media. All rights reserved.
//

import Foundation

struct TeresaPrayers {
    
    let factsArray = [
        
        "Accustom yourself continually to make many acts of love. They enkindle and melt the soul. ",
        "All things must come to the soul from its roots, from where it is planted.  ",
        "Be gentle to all and stern with yourself. ",
        "Never affirm anything unless you are sure it is true. ",
        "Never exaggerate, but express your feelings with moderation.  ",
        "Our body has this defect that, the more it is provided care and comforts, the more needs and desires it finds.  ",
        "Reflect upon the providence and wisdom of God in all created things and praise Him in them all.     ",
        "The feeling remains that God is on the journey, too.   ",
        "There are more tears shed over answered prayers than over unanswered prayers. "
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
