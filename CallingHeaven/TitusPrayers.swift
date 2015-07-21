//
//  TitusPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 2/9/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct TitusPrayers {
    
    let factsArray = [


"God our Father, source of life and freedom, through your Holy Spirit, you gave the Carmelite Titus Brandsma the courage to affirm human dignity even in the midst of suffering and degrading persecution. Grant us that same Spirit, so that, refusing all compromise with error, we may always and everywhere give coherent witness to your abiding presence among us. We ask this through Christ our Lord. Amen.",

"Lord our God, source and giver of life, you gave to Blessed Titus the Spirit of courage to proclaim human dignity and the freedom of the Church even in the throes of degrading persecution and death. Grant us that same Spirit so that in the coming of your kingdom of justice and peace we might never be ashamed of the Gospel but be enabled to recognize your loving-kindness in all the events of our lives. We ask this through our Lord Jesus Christ, your Son, who lives and reigns with you and the Holy Spirit. Amen.",

"Loving God, your servant, Titus Brandsma, labored zealously in your vineyard and gave his life freely because of his faith in you. Through his intercession I ask for your mercy and help. Father, Titus never refused when he was asked for help by your people. In his name, I come to you with my needs: \n\n (mention requests.) \n\n Lord, help me always to imitate the great faith, generous love, and burning zeal of Titus Brandsma. Glorify your servant as he wished to glorify you. Amen.\n\n Mary, Mother of Carmel, pray for us.\n\n Titus Brandsma, Carmelite and Martyr, pray for us. \n\n Amen.\n\n. Amen.",

"PRAYER BEFORE AN IMAGE OF JESUS CRUCIFIED:\n\n(“Before a Picture of Jesus in My Cell”\n\n 12th-13th February, 1942)\n Dear Lord, when looking up to thee,\n I see thy loving eyes on me;\n love overflows my humble heart,\n knowing what faithful friend thou art.\n A cup of sorrow I foresee,\n which I accept for love of thee.\n Thy painful way I wish to go;\n the only way to God I know.\n\n My soul is full of peace and light, \n although in pain, this light shines bright. \n For here thou keepest to thy breast\n my longing heart, to find there rest.\n\n Leave me here freely all alone,\n in cell where never sunlight shone.\n Should no one ever speak to me,\n this golden silence makes me free!\n\n For though alone, I have no fear;\n never wert thou, O Lord, so near.\n Sweet Jesus, please abide with me;\n my deepest peace I find in thee. Amen.",

"A new awareness of Thy love \n Encompasses my heart: \n Sweet Jesus, I in Thee and Thou \n In me shall never part.\n\n No grief shall fall my way but I \n Shall see Thy grief-filled eyes;\n The lonely way that Thou once walked\n Has made me sorrow-wise.\n\n All trouble is a white-lit joy \n That lights my darkest day; \n Thy love has turned to brightest light \n This night-like way. \n\n If I have Thee alone,\n The hours will bless\n With still, cold hands of love\n My utter loneliness.\n\n Stay with me, Jesus, only stay;\n I shall not fear\n If, reaching out my hand,\n I feel Thee near. Amen.",

"(Christ),in your weakness you conquered the world. Let me be weak with you and bow deep under the weight of life. Be insignificant and small in the eye of the world and stand up again with you for new suffering until my death will be the crowning of my offer. Amen.",
        
        //6

    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
