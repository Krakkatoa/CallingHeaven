//
//  CreditsRoll.swift
//  CallingHeaven
//
//  Created by My Mac on 3/13/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct CreditsRoll {
    
    let factsArray = [

    "Thanks to \n My Code Mentor, Cristian Garner Espinoza\n  Code Consultants- Colin Corcoran and Dmitry Grekov \n Design Consultants- Chuck Abraham, Trinity Girl, Nance Burke, Jan O'Donnell, Leslie Thomas, Linney Frank, Ashlee Howard, Laurie Johnson, PhD \n Information Contributors- Kevin Knight, editor, New Advent Catholic Encyclopedia; Carmel of Mary and Joseph, Varroville NSW; Carmel de Flavignerot, France; The Mary Pages\n Beta Testers (names to be listed here.)",

        "Thanks to \n My Code Mentor, Cristian Garner Espinoza\n  Code Consultants- software engineers Colin Corcoran and Dmitry Grekov \n Design Consultants- Chuck Abraham, Trinity Girl, Nance Burke, Jan O'Donnell, Leslie Thomas, Linney Frank, Ashlee Howard, Laurie Johnson, PhD \n Information Contributors- Kevin Knight, editor, New Advent Catholic Encyclopedia; Carmel of Mary and Joseph, Varroville NSW; Carmel de Flavignerot, France; The Mary Pages\n Beta Testers (names to be listed here.)",

]

    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
