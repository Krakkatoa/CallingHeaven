//
//  JohnPrayers.swift
//  CallingHeaven
//
//  Created by My Mac on 1/8/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//
import Foundation

struct JohnPrayers {
    
    let factsArray = [
        
        "O Living Flame of Love,\n\n that wounds so tenderly in my soul's deepest center, \n\n As you are no longer oppressive, \n\n perfect your work in me if it is your will. \n\n Break the web of this sweet encounter. Amen.",
        
        "O sweet burn! \n\n O delecable wound! \n\n O tender hand, \n\n O gentle touch that savors of eternal life, \n\n and pays the whole  debt, \n\n by slaying you have changed death into life.\n\n O my God, the more gently you touch, the more you are hidden in the purified souls of those who have made themselves aliens on earth, and whom you hide in the secret of your face. \n\n O souls that seek your own ease and comfort! If you only knew how necessary suffering is if you are to reach union with God! If you understood this, you would take up the cross with the vinegar and gall and account this a priceless favor, knowing that by dying to the world and your own selves, you would then live for God in spiritual joy. \n\n It is necessary for the soul to endure tribulations with great patience, accepting all as coming from God's hand for its healing and its good. Amen.",
        
        "Let Your divinity shine on my intellect by giving it divine knowledge, and on my will by imparting to it the divine love and on my memory with the divine possession of glory. Amen.",
        
        "Let us so act that by means of this loving activity we may attain to the vision of ourselves in Your beauty in eternal life.  That is: That I be so transformed in Your beauty that we may be alike in beauty, and both behold ourselves in Your beauty, possessing now Your very beauty; this, in such a way that each looking at the other may see in the other his own beauty, since both are Your beauty alone, I being absorbed in Your beauty; hence, I shall see You in Your beauty, and You shall see me in Your beauty, and I shall see myself in You in Your beauty, and You will see Yourself in me in Your beauty; that I may resemble You in Your beauty, and You resemble me in Your beauty, and my beauty will be Your beauty and Your beauty my beauty; wherefore I shall be You in Your beauty, and You will be me in Your beauty, because Your very beauty will be my beauty; and therefore we shall behold each other in Your beauty. Amen.",
        
        "O abyss of delights!  You are so much the more abundant the more Your riches are concentrated in the infinite unity and simplicity of Your unique being, where one attribute is so known and enjoyed as not to hinder the perfect knowledge and enjoyment of the other; rather, each grace and virtue within You is a light for each of Your other grandeurs.  By Your purity, O divine Wisdom, many things are behold in You through one.  For You are the deposit of the Father’s treasures, the splendor of the eternal light, the unspotted mirror and image of His goodness. Amen.",
        
        "Awaken and enlighten us, my Lord, that we might know and love the blessings which You ever propose to us, and that we might understand that You have moved to bestow favors on us and have remembered us. Amen.",
        
        "O Lord, my God, who will seek You with simple and pure love and not find You are all he desires, for You show Yourself first and go out to meet those who desire You? My spirit has become dry because it forgets to feed on You. Amen.",
        
        "Prayer of a Soul Taken with Love \n\n Lord God, my Beloved, if You remember still my sins in suchwise that You do not do what I beg of You, do Your will concerning them, my God, which is what I most  desire, and exercise Your goodness and mercy, and You will be known through them.  And if it is that You are waiting for my good works so as to hear my prayer through their means, grant them to me, and work them for me, and the sufferings You desire to accept, and let it be done.  But if You are not waiting for my works, what is it that makes You wait, my most clement Lord?  Why do You delay?  For if, after all, I am to receive the grace and mercy which I entreat of You in Your Son, take my mite, since You desire it, and grant me this blessing, since You also desire that. Who can free himself from the lowly manners and limitations if You do not lift him to Yourself, my God, in purity of love?  How will a man begotten and nurtured in lowliness rise up to You, Lord, if You do not raise him with Your hand which made him? You will not take from me, my God, what You once gave me in Your only Son, Jesus Christ in Whom You gave me all I desire.  Hence I rejoice that if I wait for You, You will not delay.With what procrastinations do You wait, since from this very moment you can love God in your heart? Mine are the heavens and mine is the earth.  Mine are the nations, the just are mine, and mine the sinners.  The angels are mine, and the Mother of God, and all things are mine; and God Himself is mine and for me, because Christ is mine and all for me.What do you ask, then, and seek, my soul?  Yours is all of this, and all is for you.  Do not engage yourself in something less, nor pay heed to the crumbs which fall from your Father’s table.  Go forth and exult in your Glory!  Hide yourself in It and rejoice, and you will obtain the supplications of your heart. Amen.",
        
        "Oh, how sweet Your presence will be to me, You Who are the supreme good!  I must draw near You in silence  pleased to unite me to You in … I rejoice in Your arms.  Now I ask You, Lord, do not abandon me at any time in my recollection, for I know not the value of my soul. Amen.",
        
        ///9
        
        
    ]
    
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}


