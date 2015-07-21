//
//  AndesPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 1/21/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//



import Foundation

struct AndesPrayers {
    
    let factsArray = [
        
        "Teresa de Los Andes,\n Who by the hand of Mary was changed \n    Into a young girl in love for Jesus Christ,\n You are a model of holiness\n And a way of perfection for the Church.\n You knew how to laugh, to love, to play and to serve.\n    You were strong to bear suffering\n And generous to love.\n    You knew how to contemplate God\n    In the simple things of life.\n Show us the love of the Father\n    To live friendship in joy\n    And tenderness in the family.\n Help the week and the sorrowful\n    That the Holy Spirit\n    May encourage them in hope.\n    Intercede for us And ask for Chile love and peace.\n    Teresa de Los Andes,\n    Predilected daughter of the Chilean Church,\n Religious of Carmel,\n    Friend of young people,\n    Servant of the poor,\n Pray for us every day\n    Amen.",
        
        
        
        "God of mercy, joy of the saints, you set the youthful heart of Saint Teresa ablaze with the fire of virginal love for Christ and for his Church; and even in suffering you made her a cheerful witness to charity.\n\n Through her intercession, fill us with the delights of your Spirit, so that we may proclaim by word and deed the joyful message of your love to the world.\n\n We ask this through our Lord Jesus Christ your Son who lives and reigns with you and the Holy Spirit now and for ever.",
        
        "Novena prayer to Saint Teresa de Los Andes: \n\n Lord Jesus, you chose St Teresa of Los Andes to show people the joy of knowing and loving you. She consecrated her life to your love and reflected in her countenance the beauty of your divine Face. You also asked her to spread the joyful message of the Gospel and she spent her young life living the Gospel of love. We ask you, Lord, that her canonization by the Church may serve to exalt your name and to bring her message of faith and love, of joy and hope, to everyone, especially those most in need. We also ask you to grant us the particular grace we now pray for through her intercession. \n\n Our Father, Hail Mary, Glory be to the Father.",
        
        "Yes, Mary, you are Mother of the entire universe. Your heart is filled with sweetness. At your feet let the priest prostrate himself with the same confidence as the virgin in order to find in your arms the fullness of your love. The rich as well as the poor can find in your heart their heaven. The afflicted as well as the happy can find on your mouth a celestial smile. The sick as well as the healthy can find caresses from your sweet hands. And, finally, sinners like myself find in you a protecting Mother who can crush beneath her immaculate feet the head of the dragon. And in your eyes I see mercy, pardon and a shining lamp to keep me from falling into the muddy waters of sin.",
        
        //4
        
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}
