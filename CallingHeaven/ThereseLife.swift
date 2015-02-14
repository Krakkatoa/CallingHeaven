//
//  ThereseLife.swift
//  CallingHeaven
//
//  Created by My Mac on 1/21/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct ThereseLife {
    
    let factsArray = [
        
        "(Sister Teresa of the Child Jesus)  \n \n Carmelite of Lisieux, better known as the Little Flower of Jesus, born at Alençon, France, 2 January, 1873; died at Lisieux 30 September, 1897. \n \n She was the ninth child of saintly parents, Louis and Zélie Martin, both of whom had wished to consecrate their lives to God in the cloister. The vocation denied them was given to their children, five of whom became religious, one to the Visitation Order and four in the Carmelite Convent of Lisieux. Brought up in an atmosphere of faith where every virtue and aspiration were carefully nurtured and developed, her vocation manifested itself when she was still only a child. Educated by the Benedictines, when she was fifteen she applied for permission to enter the Carmelite Convent, and being refused by the superior, went to Rome with her father, as eager to give her to God as she was to give herself, to seek the consent of the Holy Father, Leo XIII, then celebrating his jubilee. He preferred to leave the decision in the hands of the superior, who finally consented and on 9 April, 1888, at the unusual age of fifteen, Thérèse Martin entered the convent of Lisieux where two of her sisters had preceded her.  \n \n The account of the eleven years of her religious life, marked by signal graces and constant growth in holiness, is given by Soeur Thérèse in her autobiography, written in obedience to her superior and published two years after her death. In 1901 it was translated into English, and in 1912 another translation, the first complete edition of the life of the Servant of God, containing the autobiography, 'Letters and Spiritual Counsels' was published. Its success was immediate and it has passed into many editions, spreading far and wide the devotion to this 'little' saint of simplicity, and abandonment in God's service, of the perfect accomplishment of small duties. \n \n The fame of her sanctity and the many miracles performed through her intercession caused the introduction of her cause of canonization only seventeen years after her death, 10 Jun, 1914. \n \n Editor's Note: After the publication of this article, St. Thérèse was canonized and later declared a Doctor of the Church.",]
    
    
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
