//
//  EdithLife.swift
//  CallingHeaven
//
//  Created by My Mac on 1/21/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

struct EdithLife {
    
    let factsArray = [
        
        "Edith Stein, original name of Saint Teresa Benedicta of the Cross or, in Latin, Sancta Teresia Benedicta a Cruce    (born Oct. 12, 1891, Breslau, Ger. [now Wrocław, Pol.]—died Aug. 9/10, 1942, Auschwitz, Pol.), Roman Catholic convert from Judaism, Carmelite nun, philosopher, and spiritual writer who was executed by the Nazis because of her Jewish ancestry and who is regarded as a modern martyr. She was declared a saint by the Roman Catholic Church in 1998.\n\n, Born into an Orthodox Jewish family, Stein renounced her faith in 1904 and became an atheist. As a student at the University of Göttingen, she became acquainted with Edmund Husserl and became interested in his philosophy, phenomenology, which sought to describe phenomena as consciously experienced, without employing theories about their causal explanation. Also at Göttingen, she first came into contact with Roman Catholicism. When Husserl moved to the University of Freiburg, he asked Stein to join him there as his assistant; she received her doctorate in philosophy (1916), became a member of the faculty, and established a reputation as one of the university’s leading philosophers.\n\n Attracted to Roman Catholicism, Stein returned on a vacation in 1921 to Breslau, where her profound encounter with the autobiography of the mystic St. Teresa of Ávila caused her swift conversion. She was baptized on Jan. 1, 1922, and gave up her assistantship with Husserl to teach (1922–32) at a Dominican girls’ school in Speyer. While at Speyer she translated St. Thomas Aquinas’ De veritate (“On Truth”) and familiarized herself with Roman Catholic philosophy in general.\n\n In 1932 she became a lecturer at the Institute for Pedagogy at Münster but, because of anti-Semitic legislation passed by the Nazi government, was forced to resign the post the following year. In 1934 she entered the Carmelite convent at Cologne, taking the religious name Teresa Benedicta of the Cross, after the mystic who had inspired her conversion. There she completed her metaphysical work Endliches und ewiges Sein (“Finite and Eternal Being”), an attempt to synthesize the diverse philosophies of Aquinas and Husserl. Other philosophical and spiritual works followed. In 1938, with the Nazi threat growing, she was transferred to the Carmelite convent at Echt in the Netherlands, where it was thought she would be safe from persecution. There she wrote her important treatise Studie über Joannes a Cruce: Kreuzeswissenschaft (1950; The Science of the Cross), a phenomenological study of St. John of the Cross.\n\n Removal from Germany, however, proved insufficient to ensure her safety. The condemnation of Nazi anti-Semitism by the Dutch bishops of occupied Holland (July 26, 1942) provoked Adolf Hitler to order the arrest of all non-Aryan Roman Catholics. With her sister Rosa, also a convert, Teresa Benedicta was seized by the Gestapo and shipped to the concentration camp at Auschwitz. Survivors of the death camp testified that she helped all other sufferers with great compassion. She was sent to the gas chamber, where she died with her sister.\n\n The Edith Stein Guild for aiding converts was founded (1955) in the United States, and the Archivum Carmelitanum Edith Stein was established at Leuven, Belg., for the study and publication of her works. On May 1, 1987, she was beatified by Pope John Paul II. She was canonized on Oct. 11, 1998.\n\n Biography from Encyclopaedia Brittanica."
        
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
