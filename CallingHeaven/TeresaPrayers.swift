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
        
    "A Prayer To Redeem Lost Time \n O my God! \n Source of all mercy! \n I acknowledge Your sovereign power. \n While recalling the wasted years that are past,\n I believe that You, Lord,can in an instant turn this loss to gain. \n Miserable as I am, yet I firmly believe that You can do all things. \n Please restore to me the time lost,\n giving me Your grace, both now and in the future, \n that I may appear before You in wedding garments. \n Amen.\n \n",
    
    
    "Let Nothing Trouble You, \nLet nothing upset you, \nlet nothing startle you. \n All things pass; \n God does not change. \n Patience wins all it seeks. \n Whoever has God lacks nothing. \n God alone is enough.\n \n",
        
       "If, Lord, \n Thy love for me is strong \n As this which binds me unto thee, \n What holds me from thee Lord so long, \n What holds thee Lord so long from me? \n O soul, what then desirest thou? \n Lord I would see thee, who thus choose thee. \n What fears can yet assail thee now? \n All that I fear is but lose thee. \n Love's whole possession I entreat, \n Lord make my soul thine own abode, \n And I will build a nest s\n o sweet, \n It may not be too poor for God. \n A soul in God hidden from sin, \n What more desires for thee remain, \n Save but to love again, And all on flame with love within, \n Love on, \n and turn to love again.\n \n",
 
 
 "A Love Song \n Majestic sovereign, \n timeless wisdom, \n your kindness melts my hard, cold soul.\n Handsome lover, selfless giver, \n your beauty fills my dull, sad eyes. \n I am yours, you made me. \n I am yours, you called me. \n I am yours, you saved me. \n I am yours, you loved me. \n I will never leave your presence. \n Give me death, give me life. \n Give me sickness, give me health. \nGive me honor, give me shame. \n Give me weakness, give me strength. \n I will have whatever you give.\n\n",
        
    "In the Hands of God \n I am Yours and born for you, What do you want of me?\n In your hand, I place my heart, Body, life and soul,\n Deep feelings and affections mine,\n Spouse- Redeemer sweet, \n myself offered now to you, \n What do you want of me? \n Give me, if you will, prayer; or let me know dryness, \n an abundance of devotion, \n or if not, then barrennes. \n In you alone, Sovereign Majesty, \n I find my peace. \nWhat do you want of me? \n Yours I am, \n for You I was born, \n What do you want of me? \n Amen.\n \n",
        
        "May today there be peace within. \n May you trust God that you are exactly where you \n are meant to be. \n May you not forget the infinite \n possibilities that are born of faith. \n May you use those gifts that you have received, \n and pass on the love that has been given to you. \n May you be content knowing you are a child of God. \n Let this presence settle into your bones,\n and allow your soul the freedom to sing, dance, praise and love.\n It is there for each and every one of us.\n \n",

        
        "Christ has no body now but yours \n No hands, no feet on earth but yours \n Yours are the eyes through which He looks \n Compassion on this world \n Yours are the feet with which He walks to do good \n Yours are the hands with which He blesses all the world \n Yours are the hands \n Yours are the feet \n Yours are the eyes \n You are His body \n Christ has no body now on earth but yours. \n \n",
        
        "We shall never completely know ourselves if we don't strive to know God.",
        
        
   ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
