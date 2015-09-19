//
//  EdithPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 1/21/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

import Foundation
struct EdithPrayers{
    
    let factsArray = [
        
        "O Prince of Peace, to all who receive You, You bright light and peace.  Help me to live in daily contact with You, listening to the words You have spoken and obeying them.  O Divine Child, I place my hands in Yours; I shall follow You.  Oh, let Your divine life flow into me. Amen.",
        
        "I will go unto the altar of God.  It is not myself and my tiny little affairs that matter here, but the great sacrifice of atonement.  I surrender myself entirely to Your divine will, O Lord.  Make my heart grow greater and wider, out of itself into the Divine Life. Amen.",
        
        "O my God, fill my soul with holy joy, courage and strength to serve You.  Enkindle Your love in me and then walk with me along the next stretch of road before me.  I do not see very far ahead, but when I have arrived where the horizon now closes down, a new prospect will open before me and I shall met with peace. Amen.\n \n ",
        
        "How wondrous are the marvels of your love, We are amazed, we stammer and grow dumb, for word and spirit fail us. Amen.",
        
        
    ]
    //4
    
    func randomFact() -> String {
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}

