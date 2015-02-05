//
//  MagdalenLife.swift
//  CallingHeaven
//
//  Created by My Mac on 2/4/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct MagdalenLife {
    
    let factsArray = [
        
    "Carmelite Virgin, born 2 April, 1566; died 25 May, 1607. Of outward events there were very few in the saint's life. She came of two noble families, her father being Camillo Geri de' Pazzi and her mother a Buondelmonti. She was baptized, and named Caterina, in the great baptistery. Her childhood much resembled that of some other women saints who have become great mystics, in an early love of prayer and penance, great charity to the poor, an apostolic spirit of teaching religious truths, and a charm and sweetness of nature that made her a general favourite. But above all other spiritual characteristics was Caterina's intense attraction towards the Blessed Sacrament, her longing to receive It, and her delight in touching and being near those who were speaking of It, or who had just been to Communion. She made her own First Communion at the age of ten, and shortly afterwards vowed her virginity to God. At fourteen she was sent to school at the convent of Cavalaresse, where she lived in so mortified and fervent a manner as to make the sisters prophesy that she would become a great saint; and, on leaving it, she told her parents of her resolve to enter the religious state. They were truly spiritual people; and, after a little difficulty in persuading them to relinquish their only daughter, she finally entered in December, 1582, the Carmelite convent of Santa Maria degl' Angeli, founded by four Florentine ladies in 1450 and renowned for its strict observance. Her chief reason for choosing this convent was the rule there followed of daily Communion.\n Caterina was clothed in 1583, when she took the name of Maria Maddalena; and on 29 May, 1584, being then so ill that they feared she would not recover, she was professed. After her profession, she was subject to an extraordinary daily ecstasy for forty consecutive days, at the end of which time she appeared at the point of death. She recovered, however, miraculously; and henceforth, in spite of constant bad health, was able to fill with energy the various offices to which she was appointed. She became, in turn, mistress ofexterns--i.e. of girls coming to the convent on trial--teacher and mistress of the juniors, novice mistress (which post she held for six years), and finally, in 1604, superior. For five years (1585-90) God allowed her to be tried by terrible inward desolation and temptations, and by external diabolic attacks; but the courageous severity and deep humility of the means that she took for overcoming these only served to make her virtues shine more brilliantly in the eyes of her community. \n From the time of her clothing with the religious habit till her death the saint's life was one series of raptures and ecstasies, of which only the most notable characteristics can be named in a short notice.\n * First, these raptures sometimes seized upon her whole being with such force as to compel her to rapid motion (e.g. towards some sacred object).\n * Secondly, she was frequently able, whilst in ecstasy, to carry on work belonging to her office--e.g., embroidery, painting, etc.--with perfect composure and efficiency.\n * Thirdly--and this is the point of chief importance--it was whilst in her states of rapture that St. Mary Magdalen de' Pazzi gave utterance to those wonderful maxims of Divine Love, and those counsels of perfection for souls, especially in the religious state, which a modern editor of a selection of them declares to be 'more frequently quoted by spiritual writers than those even of St. Teresa.' These utterances have been preserved to us by the saint's companions, who (unknown to her) took them down from her lips as she poured them forth. She spoke sometimes as of herself, and sometimes as themouthpiece of one or other of the Persons of the Blessed Trinity. These maxims of the saint are sometimes described as her 'Works', although she wrote down none of them herself. \n This ecstatic life in no wise interfered with the saint's usefulness in her community. She was noted for her strong common-sense, as well as for the high standard and strictness of her government, and was most dearly loved to the end of her life by all for the spirit of intense charity that accompanied her somewhat severe code of discipline. As novice-mistress she was renowned for a miraculous gift of reading her subjects' hearts--which gift, indeed, was not entirely confined to her community. Many miracles, both of this and of other kinds, she performed for the benefit either of her own convent or of outsiders. She often saw things far off, and is said once to have supernaturally beheld St. Catherine de' Ricci in her convent at Prato, reading a letter that she had sent her and writing the answer; but the two saints never met in a natural manner. To St. Mary Magdalen's numerous penances, and to the ardent love of suffering that made her genuinely wish to live long in order to suffer with Christ, we can here merely refer; but it must not be forgotten that she was one of the strongest upholders of the value of suffering for the love of God and the salvation of our fellow-creatures, that ever lived. Her death was fully in accordance with her life in this respect, for she died after an illness of nearly threeyears' duration and of indescribable painfulness, borne with heroic joy to the end. Innumerable miracles followed the saint's death, and the process for her beatification was begun in 1610 under Paul V, and finished under Urban VIII in 1626. She was not, however, canonized till sixty-two years after her death, when Clement IX raised her to the altars in 28 April, 1669. Her feast is kept on 27 May. \n \n (Taken from Catholic Encyclopedia)"
    
    

        
        
        
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}



