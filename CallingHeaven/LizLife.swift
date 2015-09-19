//
//  LizLife.swift
//  CallingHeaven
//
//  Created by My Mac on 1/21/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct LizLife {
    
    let factsArray = [
        
    "Elizabeth was born in a military camp on July 18th 1880.\n\n She was a captain’s daughter and was endowed with a strong disposition, was boisterous, sometimes violent.\n\n All things great and beautiful attracted her and she was naturally inclined to seek Jesus, for whose love she wanted to master her “ terrible character.” \n\n At the age of thirteen she was awarded the top prize for piano at the Dijon Academy of Music.\n\n But her ambition lay elsewhere.She wanted to love Jesus to distraction, and she desired to dedicate her life to Him.\n\n Meanwhile she lived like any other young girl of her time.She was enthusiastic about everything : the sea, the mountains, friends, but also her parish community, visiting the sick, catechizing children and, above all and at all times, praying.\n\n Day after day, Elizabeth felt that she was being called to join Carmel in order to pray endlessly and so bring humanity closer to God. After overcoming her mother’s opposition, she was admitted to the Dijon Carmel at the age of 21.\n\n Thereafter she was to be deeply happy : hers was a life of prayer, poverty and hardship, but one enlightened by the shining presence of God and brotherly love.\n\n After a radiant period as a postulant she spent a difficult novitiate year before pronouncing her vows on 11th January 1903.\n\n She then became “a spouse of Christ”.\n\n Nourished by the Word of God (especially through St Paul’s writings), she feels he invites her to become : “ The praise of the Glory of God ” the very God “ who loved us too much.”\n\n Elizabeth intends to give back love for love at all times in community life.In her letters to her friends, most of them lay people, she shares her wonderful discovery : “All people are called, loved, inhabited by His Presence.”\n\n It was in 1904 that she composed her famous Prayer : “O my God Trinity whom I adore” in which she gives herself entirely.\n\n A victim of Addison’s disease, still incurable at the time, she lay severely ill for nine long months in 1906, Despite her great suffering, she continued to proclaim her joy of loving and offering herself.\n\n She passed away on 9th November.\n\n Article courtesy of Carmel de Flavignerot. http://www.carmel-flavignerot.fr ",
       
        
    ]
    
    func randomFact() -> String {
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
