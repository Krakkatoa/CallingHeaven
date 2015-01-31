//
//  LizPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 1/21/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct LizPrayers {
    
    let factsArray = [
        
        //this is all one long prayer
        
    "“Remain in Me",
    "Remain in Me” (Jn. 15:4). It is the Word of God who gives this order, expresses this wish.",
    
    "Remain with Me, not for a few moments, a few hours which must pass away, but “remain…” permanently, habitually, Remain in Me, pray in Me, adore in Me, love in Me, suffer in Me, work and act in Me.",
    
    "Remain in Me so that you may be able to encounter anyone or anything; penetrate further still into these depths.",
    
    "This is truly the “solitude into which God wants to allure the soul that He may speak to it,” as the prophet sang (Hos. 2:14).",
    
    "In order to understand this very mysterious saying, we must not, so to speak, stop at the surface, but enter ever deeper in the divine Being through recollection.",
    
    "I pursue my course,” exclaimed St Paul; so must we descend daily this pathway of the Abyss which is God; let us slide down this slope in wholly loving confidence.",
    
    "Abyss calls to abyss” (Ps. 41:8). It is there in the very depths that the divine impact takes place, where the Abyss of our nothingness encounters the Abyss of mercy, the immensity of the all of God.",
    
    "There we will find the strength to die to ourselves and, losing all vestige of self, we will be changed into love…. “Blessed are those who die in the Lord” (Ap. 14:13).",
        
        //prayer ends here.
        
// This is all one long prayer
        
        "Holy Trinity, Whom I Adore",
       " O my God, Trinity whom I adore, let me entirely forget myself that I may abide in You, still and peaceful as if my soul were already in eternity; let nothing disturb my peace nor separate me from You, O my unchanging God, but that each moment may take me further into the depths of Your mystery ! Pacify my soul! Make it Your heaven, Your beloved home and place of Your repose; let me never leave You there alone, but may I be ever attentive, ever alert in my faith, ever adoring and all given up to Your creative action.",
    
    "O my beloved Christ, crucified for love, would that I might be for You a spouse of Your heart! I would anoint You with glory, I would love You - even unto death! Yet I sense my frailty and ask You to adorn me with Yourself; identify my soul with all the movements of Your soul, submerge me, overwhelm me, substitute Yourself in me that my life may become but a reflection of Your life. Come into me as Adorer, Redeemer and Saviour.",
    
    "O Eternal Word, Word of my God, would that I might spend my life listening to You, would that I might be fully receptive to learn all from You; in all darkness, all loneliness, all weakness, may I ever keep my eyes fixed on You and abide under Your great light; O my Beloved Star, fascinate me so that I may never be able to leave Your radiance.",
    
    "O Consuming Fire, Spirit of Love, descend into my soul and make all in me as an incarnation of the Word, that I may be to Him a super-added humanity wherein He renews His mystery; and You O Father, bestow Yourself and bend down to Your little creature, seeing in her only Your beloved Son in whom You are well pleased.",
    
    "O my `Three', my All, my Beatitude, infinite Solitude, Immensity in whom I lose myself, I give myself to You as a prey to be consumed; enclose Yourself in me that I may be absorbed in You so as to contemplate in Your light the abyss of Your Splendour !",
        
        //prayer ends here
        
        "More prayers will be here.",
        
        "O God, who loves souls so much as to make in them Your dwelling place, I thank You for giving Blessed Elizabeth of the Trinity the grace, during her lifetime, to understand the indwelling of the Blessed Trinity in her soul. Grant that I too, may remember your presence in my soul, and if it be Your holy will manifest by visible signs the glory she now enjoys with You in heaven, through Christ our Lord. Amen. Bl. Elizabeth of the Trinity, pray for us.",
        
       //prayer starts here
        
        "Oh how good it is in silence",
        "To listen to Him over and over,",
        "To enjoy the peace of His presence,",
        "and then to surrender wholly to His love.",
            
        "O Lamb, so pure and so meek,",
        "You my All, my only One,",
        "How well you know that your fiancee,",
        "Your little one, hungers greatly for You.",
        
        "She hungers to feed upon her Master,",
        "Above all to be consumed by Him,",
        "To surrender fully to Him her whole being",
        "So she may be totally taken.",
        "Oh, that I may be possessed by You;",
        "One who lives by You alone,",
        "Yours, your living host,",
        "Consumed by you on the Cross.",
        
        
        //prayer ends here
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
