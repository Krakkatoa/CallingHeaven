//
//  MagdalenQuotes.swift
//  CallingHeaven
//
//  Created by My Mac on 2/4/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct MagdalenQuotes {
    
    let factsArray = [
        
        "Trials are nothing else but the forge that purifies the soul of all its imperfections. ",
        
        "You will be consoled according to the greatness of your sorrow and affliction; the greater the suffering, the greater will be the reward.",
        
        "I do not desire to die soon, because in Heaven there is no suffering. I desire to live a long time because I yearn to suffer much for the love of my Spouse.",
        
        "Prayer ought to be humble, fervent, resigned, persevering, and accompanied with great reverence. One should consider that he stands in the presence of a God, and speaks with a Lord before whom the angels tremble from awe and fear.",
        
        "A single instant passed under simple obedience is immeasurably more valuable in the sight of God than an entire day spent in the most sublime contemplation.",
        
"Oh! Could you but see the beauty of a soul in the grace of God, you would be so much enamored of it that you would do nothing else but ask souls of God; and, on the contrary, could a soul in mortal sin be placed before your eyes, you would do nothing but weep, and you would hate sin more than the devil himself, and always pray for the conversion of sinners.",
        
        "Trials are nothing else but the forge that purifies the soul of all its imperfections.",
      
        "A little drop of simple obedience is worth a million times more than a whole vase of the choicest contemplation.",
        
        "The last thing I ask of you—and I ask it in the name of our Lord Jesus Christ—is that you love him alone, that you trust implicitly in him and that you encourage one another continually to suffer for the love of him.",
    
    //9
    ]

    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}



