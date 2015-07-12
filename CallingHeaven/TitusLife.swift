//
//  TitusLife.swift
//  CallingHeaven
//
//  Created by My Mac on 2/9/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct TitusLife {
    
    let factsArray = [
        
"Blessed Titus Brandsma \n\n February 23, 1881- July 26, 1942\n Memorial: July 24 \n Also known as: Anno Sjoerd Brandsma, Shorty\n\n Anno Sjoerd Brandsma was born February 23, 1881, in the village of Oegeklooster near Bolsward in Friesland, as a son of Titus Brandsma, dairy farmer and Tjitsje Postma. At the age of 11, he asked his father's permission to enter the Franciscan Minor Seminary in Megen to begin preparatory studies. Anno was a frail boy and not blessed with the strong constitution typical of his people. He was a willing worker but could never handle the heavy farm work Frisian children customarily performed. Titus and Tjitsje, although concerned about his health, gave him permission to try the seminary and Anno left home in 1892, when he was eleven years old.\n\n During hi six-year stay, Anno was known for his intelligence as well as his sense of humor. His classmates nicknamed him, “Shorty.“ In his third year at the seminary, he developed a severe intestinal disorder and lost a considerable amount of weight. The friars ordered a special diet for him, featuring cream, eggs, butter and other foods that enabled him to regain his lost weight. Anno soon recovered his health and returned with renewed energies to his studies. His superiors, however, not satisfied that he was strong enough for the rigors of Dutch Franciscan life, suggested he seek a gentler form of life. The rejection hurt, but Anno accepted it with grace and resiliency. \n\n Anno Brandsma joined the Carmelite fathers at Boxmer on September 17, 1898. He chose his father's name, Titus and made his first vows in 1899.\n\n From the beginning of entering the Carmelite Monastery, Titus showed an extraordinary gift for journalism and writing. He translated the works of St. Teresa of Avila from Spanish to Dutch, publishing them in 1901. Titus was ordained a Catholic priest on June 17, 1905, and after further studies at the Roman Gregorian University, graduated on October 25, 1909 with a doctorate in philosophy. Father Titus Brandsma spent his early ministry in education where he joined the faculty of the newly founded Catholic University of Nijmegen in 1923. His interest in mysticism ultimately led him to France, Germany, the United States, Italy, Spain and in 1935, he was named by the Dutch Hierarchy as National Spiritual Advisor to Catholic Journalists. \n\n In 1935, he wrote against anti-Jewish marriage laws, which brought him to the attention of the Nazis. Titus later wrote that no Catholic publication could publish Nazi propaganda and still call itself Catholic; this led to more attention. Continually followed by the Gestapo, the nazi attention led to his arrest on 19 January 1942. There he was overworked, underfed and beaten daily; He asked fellow prisoners to pray for the salvation of the guards. When he could no longer work, he was used for medical experiments. When he was no longer any use for experimentation, he was murdered. He did July 26, 1942, by injection with a deadly drug that, ten minutes later, took his life at Dachau concentration camp; his executioner was a nurse who had been raised Catholic, but left the Church.\n\n Titus Brandsma is honored as a martyr within the Roman Catholic Church. He was beatified on 3 November 3, 1985 by Pope John Paul II. His canonization is pending. In 2005, Titus Brandsma was chosen by the inhabitants of Nijmegen as the greatest citizen to have lived there.\n\n Article courtesy of The Mary Pages, www.marypages.com"

]

func randomFact() -> String {
    var unsignedArrayCount = UInt32(factsArray.count)
    var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
    var randomNumber = Int(unsignedRandomNumber)
    
    return factsArray[randomNumber]
}

}

