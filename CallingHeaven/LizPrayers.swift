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
        
    "“Remain in Me \n Remain in Me” (Jn. 15:4). It is the Word of God who gives this order, expresses this wish., \n Remain with Me, not for a few moments,\n a few hours which must pass away, \n but “remain…” permanently, habitually, \n Remain in Me, pray in Me, adore in Me, \n love in Me, suffer in Me, work and act in Me. \n Remain in Me so that you may be able to encounter anyone or anything; penetrate further still into these depths. \n This is truly the “solitude into which God wants to allure the soul that He may speak to it,” as the prophet sang (Hos. 2:14). \n In order to understand this very mysterious saying, \n we must not, so to speak, stop at the surface,  \n but enter ever deeper in the divine Being through recollection. \n I pursue my course,” exclaimed St Paul; \n so must we descend daily  \n this pathway of the Abyss which is God;  \n let us slide down this slope in wholly loving confidence. \n\n Abyss calls to abyss” (Ps. 41:8). \n It is there in the very depths  \n that the divine impact takes place,  \n where the Abyss of our nothingness  \n encounters the Abyss of mercy,  \n the immensity of the all of God.  \n There we will find the strength to die to ourselves  \nand,losing all vestige of self,  \n we will be changed into love.  \n “Blessed are those who die in the Lord” (Ap. 14:13).",
        
        
// This is all one long prayer
        
        "Holy Trinity, Whom I Adore  \n O my God, Trinity whom I adore,  \n let me entirely forget myself  \n that I may abide in You,  \n still and peaceful  \n as if my soul were already in eternity;  \n let nothing disturb my peace  \n nor separate me from You,  \n O my unchanging God,  \n but that each moment may take me further  \n into the depths of Your mystery!  \n Pacify my soul!  \n Make it Your heaven,  \n Your beloved home and place of Your repose;  \n let me never leave You there alone, \n but may I be ever attentive,  \n ever alert in my faith,  \n ever adoring and all given up  \n to Your creative action. \n \n O my beloved Christ, \n crucified for love,  \n would that I might be for You a spouse of Your heart!  \n I would anoint You with glory, \n I would love You - even unto death! \n Yet I sense my frailty and ask You to adorn me with Yourself;  \n identify my soul with all the movements of Your soul,  \n submerge me, overwhelm me,  \n substitute Yourself in me  \n that my life may become but a reflection  \n of Your life.  \n Come into me as Adorer, Redeemer and Saviour. \n O Eternal Word,  \n Word of my God,  \n would that I might spend my life listening to You,  \n would that I might be fully receptive  \n to learn all from You;  \n in all darkness,  \nall loneliness, \nall weakness,  \n may I ever keep my eyes fixed on You  \n and abide under Your great light;  \n O my Beloved Star,  \n fascinate me so that  \n I may never be able to leave Your radiance. \n O Consuming Fire, Spirit of Love,  \n descend into my soul  \n and make all in me as an incarnation of the Word,  \n that I may be to Him a super-added humanity  \n wherein He renews His mystery;  \n and You O Father, bestow Yourself  \n and bend down to Your little creature,  \n seeing in her only Your beloved Son  \n in whom You are well pleased. \n  \n O my `Three',  \n my All,  \n my Beatitude, \n infinite Solitude,  \n Immensity in whom I lose myself, \n I give myself to You as a prey to be consumed;  \n enclose Yourself in me  \n that I may be absorbed in You  \n so as to contemplate in Your light  \n the abyss of Your Splendour!",
        
        //prayer ends here
        
       
        
        "O God, who loves souls so much as to make in them Your dwelling place,  \n I thank You for giving Blessed Elizabeth of the Trinity  \n the grace, during her lifetime,  \n to understand the indwelling \n of the Blessed Trinity in her soul.  \n Grant that I too,  \n may remember your presence in my soul, \n and if it be Your holy will \n  manifest by visible signs  \n the glory she now enjoys with You  \n in heaven,  \n through Christ our Lord.  \n Amen.  \n Bl. Elizabeth of the Trinity, pray for us.",
        
        
        "Oh how good it is in silence  \n To listen to Him over and over, \n To enjoy the peace of His presence, \n and then to surrender wholly to His love. \n \n O Lamb, so pure and so meek,  \n You my All, my only One,  \n How well you know that your fiancee,  \n Your little one, hungers greatly for You. \n She hungers to feed upon her Master, \n Above all to be consumed by Him, \n To surrender fully to Him her whole being \n So she may be totally taken. \n Oh, that I may be possessed by You, \n One who lives by You alone,\n Yours, your living host \n Consumed by you on the Cross.",
        
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
