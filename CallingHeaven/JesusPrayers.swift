//
//  JesusPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 1/8/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation
struct JesusPrayers {
    
    let factsArray = [
        
        "Our Father, \n Who art in heaven, \n Hallowed be thy name \n Thy Kingdom come, \n Thy will be done, \n on earth as it is in heaven. \n Give us this day our daily bread \n and forgive our trespasses \n as we forgive those who trespass against us. \n Lead us not into temptation but deliver us from evil. \n Amen.",
        
        "High Priestly Prayer \n\n John 17 \n\n Jesus spoke these things; and lifting up His eyes to heaven, He said, “Father, the hour has come; glorify Your Son, that the Son may glorify You, even as You gave Him authority over all flesh, that to all whom You have given Him, He may give eternal life. This is eternal life, that they may know You, the only true God, and Jesus Christ whom You have sent. I glorified You on the earth, having accomplished the work which You have given Me to do. Now, Father, glorify Me together with Yourself, with the glory which I had with You before the world was. \n\n I have manifested Your name to the men whom You gave Me out of the world; they were Yours and You gave them to Me, and they have kept Your word. Now they have come to know that everything You have given Me is from You; for the words which You gave Me I have given to them; and they received them and truly understood that I came forth from You, and they believed that You sent Me. I ask on their behalf; I do not ask on behalf of the world, but of those whom You have given Me; for they are Yours; and all things that are Mine are Yours, and Yours are Mine; and I have been glorified in them. I am no longer in the world; and yet they themselves are in the world, and I come to You. Holy Father, keep them in Your name, the name which You have given Me, that they may be one even as We are. While I was with them, I was keeping them in Your name which You have given Me; and I guarded them and not one of them perished but the one of perdition, so that the Scripture would be fulfilled. \n\n But now I come to You; and these things I speak in the world so that they may have My joy made full in themselves. I have given them Your word; and the world has hated them, because they are not of the world, even as I am not of the world. I do not ask You to take them out of the world, but to keep them from the evil one. They are not of the world, even as I am not of the world. Sanctify them in the truth; Your word is truth. As You sent Me into the world, I also have sent them into the world. For their sakes I sanctify Myself, that they themselves also may be sanctified in truth. \n\n I do not ask on behalf of these alone, but for those also who believe in Me through their word; that they may all be one; even as You, Father, are in Me and I in You, that they also may be in Us, so that the world may believe that You sent Me.\n\n The glory which You have given Me I have given to them, that they may be one, just as We are one; I in them and You in Me, that they may be perfected in unity, so that the world may know that You sent Me, and loved them, even as You have loved Me. Father, I desire that they also, whom You have given Me, be with Me where I am, so that they may see My glory which You have given Me, for You loved Me before the foundation of the world.\n\n O righteous Father, although the world has not known You, yet I have known You; and these have known that You sent Me;  and I have made Your name known to them, and will make it known, so that the love with which You loved Me may be in them, and I in them.",
        
        
        
        
    ]
    

    
    func randomFact() -> String {
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
}

