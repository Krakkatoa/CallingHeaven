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
        
        "To what shall I liken me? \n To little birds in their nest \n If the father and mother do not bring them food, they die of hunger. \n Thus is my soul without you, Lord;\n It does not have any nourishment. It cannot live. \n To what shall I liken me? \n To the little grain of wheat cast into the earth.\n If the dew falls not, if the sun does not warm it, the grain molds. \n But if you give your dew and your sun, the little grain will be refreshed and warmed. \n It will take root and produce a beautiful plant with many grains. \n To what shall I like me, Lord? \n To a rose that is cut and left to dry up in the hand. It loses its perfume; \n But if it remains in the rosebush, it is always fresh and beautiful and keeps its perfume.\n Keep me Lord, to give me life in you. \n To what shall I liken you, Lord? \n To the dove that feeds its little ones, \n To a mother who nourishes her little babe.",
        
        "At the feet of Mary, my Mother dear, \n I came back to life. \n O all you who suffer, come to Mary, at the feet of Mary, I came back to life. \n O you who work in this monastery, Mary counts your steps and your labors. Tell yourselves: At the feet of Mary, I came back to life. \n You who dwell at this monastery, detach yourselves from the things of the earth.\n Your salvation and your life are at the feet of Mary. \n I dwell in the heart of my mother. There I find my Beloved. \n Am I then an orphan? \n At the bosom of Mary, I have found life. \n Do not say I am an orphan: I have Mary for Mother and God for Father. \n The serpent, the dragon, wished to catch me and take my life; \n But at the feet of Mary, I recovered my life. \n Mary called me, and, in this monastery, will I remain forever. \n At the feet of Mary, I came to life again.",
    ]

//3
    
    func randomFact() -> String {
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
