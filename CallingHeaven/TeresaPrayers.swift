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
        
    "A Prayer To Redeem Lost Time- \n O my God! \n Source of all mercy! I acknowledge Your sovereign power. While recalling the wasted years that are past, I believe that You, Lord,can in an instant turn this loss to gain. Miserable as I am, yet I firmly believe that You can do all things. Please restore to me the time lost, giving me Your grace, both now and in the future, that I may appear before You in wedding garments. Amen.",
    
    
    "Let Nothing Trouble You, Let nothing upset you, let nothing startle you. All things pass; God does not change. Patience wins all it seeks. Whoever has God lacks nothing. God alone is enough.",
        
       "If, Lord, Thy love for me is strong As this which binds me unto thee, What holds me from thee Lord so long, What holds thee Lord so long from me? O soul, what then desirest thou? Lord I would see thee, who thus choose thee. What fears can yet assail thee now? All that I fear is but lose thee. Love's whole possession I entreat, Lord make my soul thine own abode, And I will build a nest so sweet, It may not be too poor for God. A soul in God hidden from sin, What more desires for thee remain, Save but to love again, And all on flame with love within, Love on, and turn to love again.",
 
 
 "A Love Song- Majestic sovereign, timeless wisdom, your kindness melts my hard, cold soul. Handsome lover, selfless giver, your beauty fills my dull, sad eyes. I am yours, you made me. I am yours, you called me. I am yours, you saved me. I am yours, you loved me. I will never leave your presence. Give me death, give me life. Give me sickness, give me health. Give me honor, give me shame. Give me weakness, give me strength. I will have whatever you give.",
        
    "In the Hands of God- I am Yours and born for you, What do you want of me? In your hand, I place my heart, Body, life and soul, Deep feelings and affections mine, Spouse- Redeemer sweet, myself offered now to you, What do you want of me? Give me, if you will, prayer; or let me know dryness, an abundance of devotion, or if not, then barrennes. In you alone, Sovereign Majesty, I find my peace, What do you want of me? Yours I am, for You I was born, What do you want of me? Amen.",
 
   ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
