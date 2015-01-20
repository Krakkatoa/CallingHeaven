//
//  JesusPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 1/8/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation
struct JesusPrayers {
    
    let factsArray = [

"My Father, if this cannot pass away unless I drink it, Your will be done. (Matthew 26:42)",

"Are you still sleeping and resting? Behold, the hour is at hand and the Son of Man is being betrayed into the hands of sinners. Get up, let us be going; behold, the one who betrays me is at hand!” (Matthew 26:45-46)",

"Put your sword back into its place; for all those who take up the sword shall perish by the sword. Or do you think that I cannot appeal to My Father, and He will at once put at my disposal more than twelve legions of angels? How then will the Scriptures be fulfilled, which say that it must happen this way? (Matthew 26:52-54)",

"You have said it yourself; nevertheless I tell you, [v]hereafter you will see the Son of Man sitting at the right hand of Power, and coming on the clouds of heaven. (Matthew 26:64)",

"My God, My God, why have you forsaken me? (Matthew 27:46)",

"Do not be afraid; go and take word to my brethren to leave for Galilee, and there they will see me. (Matthew 28:10)",

"All authority has been given to me in heaven and on earth. Go therefore and make disciples of all the nations, baptizing them in the name of the Father and the Son and the Holy Spirit, teaching them to observe all that I commanded you; and lo, I am with you always, even to the end of the age. (Matthew 28:18-20)",

]


///249

func randomFact() -> String {
    var unsignedArrayCount = UInt32(factsArray.count)
    var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
    var randomNumber = Int(unsignedRandomNumber)
    
    return factsArray[randomNumber]
}
}

