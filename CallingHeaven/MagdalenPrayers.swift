//
//  MagdalenPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 2/4/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct MagdalenPrayers {
    
    let factsArray = [
        
    "Come, Holy Spirit. \n Let the precious pearl of the Father and the Word's delight come. \n Spirit of truth, you are the reward of the saints, the comforters of souls, light in the darkness, riches to the poor, treasure to lovers, food for the hungry, comfort to those who are wandering; \n to sum up, you are the one in whom all treasurers are contained. \n Come! \n As you descended upon Mary, that the Word might become flesh, \n work in us through grace as you worked in her through nature and grace. \n Come! \nFood of every chaste thought, fountain of all mercy, sum of all purity. \n Come!\n Consume in us whatever prevents us from being consumed in you.",
    
        "Come, Holy Spirit. \n Spirit of truth, \n you are the reward of the saints, \n the comforter of souls, \n light in the darkness, \n riches to the poor, \n treasure to lovers, \n food for the hungry, \ncomfort to those who are wandering;\n to sum up, you are the one \n in whom all treasures are contained.",
        
               
        
        
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}