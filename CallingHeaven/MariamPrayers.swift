//
//  MariamPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 1/21/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct MariamPrayers {
    
    let factsArray = [
    
    "Holy Spirit, inspire me. Love of God, consume me. Along the true road, lead me. Mary, my Mother, look upon me. With Jesus, bless me. From all evil, from all illusion, from all danger, preserve me.",
    
        "Source of peace, Light, come and enlighten me. I am hungry, come and nourish me. I am thirsty, come and quench my thirst. I am blind, come and give me light. I am poor, come and enrich me.",
        
        "O Blessed Mariam Baouardy, You brought the love of the Holy Spirit more closely to us all. Wake us up to the wonders of Christ's love for us. Open to us the courage to willingly bear trials and suffering. Mariam most humble, pray for us."
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
