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
    
    "Holy Spirit, inspire me. \n Love of God, consume me. \n Along the true road, lead me. \n Mary, my Mother, look upon me. \n With Jesus, bless me. \n From all evil, \n from all illusion, \n from all danger, \n preserve me.",
    
        "Source of peace, Light, come and enlighten me. \n I am hungry, come and nourish me. \n I am thirsty, come and quench my thirst. \n I am blind, come and give me light. \n  I am poor, come and enrich me.",
        
        "O Blessed Mary of Christ Crucified, \n You brought the love of the Holy Spirit more closely to us all. \n Wake all of us up to the wonders of Christ's love for us. \n Open to us the courage to willingly bear trials and suffering. \n Mary of Christ Crucified, most humble, pray for us.",
    ]

//3
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
