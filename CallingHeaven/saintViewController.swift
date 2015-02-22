//
//  saintViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 11/29/14.
//  Copyright (c) 2014 Carmel Heart Media. All rights reserved.
//



import UIKit

import Social

class saintViewController: UIViewController {
    var test:String!
    
    
    
    @IBOutlet var bioLabel: UILabel!
    
    
    @IBOutlet weak var bioLabel2: UILabel!
    
    var bioTemporal:String!
    var nameTemporal:String!
    var lifeTemporal:String!
    var temporalImage:UIImage!
    
    
    @IBOutlet var testLabel: UITextView!
    @IBOutlet var saintImage: UIImageView!
    
    
    @IBOutlet weak var journalAction: UIButton!
    @IBOutlet weak var backAction: UIImageView!
    
    
    
    @IBOutlet weak var saintPrayerButton: UIButton!
    
    
    
    @IBAction func saintPrayerAction ()
    {
        switch nameTemporal
        { case "St. Teresa of Avila":
            (testLabel.text = teresaPrayers.randomFact())
        case "St. John of the Cross": (testLabel.text = johnPrayers.randomFact())
        case "St. Therese of Lisieux": (testLabel.text = theresePrayers.randomFact())
        case "St. Edith Stein": (testLabel.text = edithPrayers.randomFact ())
        case "Jesus Christ":(testLabel.text = jesusPrayers.randomFact ())
        case "Bl. Titus Brandsma": (testLabel.text = titusPrayers.randomFact ())
        case "Bl. Mariam Baouardy":(testLabel.text = mariamPrayers.randomFact ())
        case "Bl. Elizabeth of the Trinity":(testLabel.text = lizPrayers.randomFact ())
        case "St. Teresa of the Andes":(testLabel.text = andesPrayers.randomFact ())
            
            
        default: println("Something else") }
    }
    
    let teresaPrayers = TeresaPrayers ()
    let johnPrayers = JohnPrayers ()
    let theresePrayers = TheresePrayers ()
    let edithPrayers = EdithPrayers ()
    let jesusPrayers = JesusPrayers ()
    let titusPrayers = TitusPrayers ()
    let mariamPrayers = MariamPrayers ()
    let lizPrayers = LizPrayers ()
    let andesPrayers = AndesPrayers ()
    
    
    @IBOutlet weak var heartLifeAction: UIButton!
    
    
    @IBAction func heartLifeAction(sender: AnyObject) {
        switch lifeTemporal
        { case "St. Teresa of Avila":
            (testLabel.text = teresaLife.randomFact())
        case "St. John of the Cross": (testLabel.text = johnLife.randomFact())
        case "St. Therese of Lisieux": (testLabel.text = thereseLife.randomFact())
        case "St. Edith Stein": (testLabel.text = edithLife.randomFact ())
        case "Jesus Christ":(testLabel.text = jesusLife.randomFact ())
        case "Bl. Titus Brandsma": (testLabel.text = titusLife.randomFact())
        case "Bl. Mariam Baouardy":(testLabel.text = mariamLife.randomFact ())
        case "Bl. Elizabeth of the Trinity":(testLabel.text = lizLife.randomFact ())
        case "St. Teresa of the Andes":(testLabel.text = andesLife.randomFact ())
            
            
            
            
            
        default: println("Something else") }
    }
    
    let teresaLife = TeresaLife ()
    let johnLife = JohnLife ()
    let thereseLife = ThereseLife ()
    let edithLife = EdithLife ()
    let jesusLife = JesusLife ()
    let titusLife = TitusLife ()
    let mariamLife = MariamLife ()
    let lizLife = LizLife ()
    let andesLife = AndesLife ()
    
    
    override func viewDidLoad() {
        
        bioLabel.text = nameTemporal
        saintImage.image = temporalImage
        bioLabel2.text = lifeTemporal
        
        
        
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backAction(sender: AnyObject){
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
}
 
    
 //Social Media Integration.
    
    var messageString:String = " (Sent via the Calling Heaven App from Carmel Heart Media. Coming soon!)"
    var quotebyString:String = " - "
    var message2String:String = "#CallingHeaven"
    
    
    @IBAction func shareFacebook(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeFacebook)
            
            var postingString = (testLabel.text)! + quotebyString + (bioLabel.text)! + messageString
            
            facebookSheet.setInitialText (postingString)
            
            
            self.presentViewController(facebookSheet, animated: true, completion: nil)
        }else{
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to Facebook to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
    }
    
    
    
    @IBAction func shareTwitter(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            
            var tweetSheet:SLComposeViewController = SLComposeViewController (forServiceType:SLServiceTypeTwitter)
            
            var postingString = (testLabel.text)! + quotebyString + (bioLabel.text)! + message2String
            
            tweetSheet.setInitialText  (postingString)
            
            self.presentViewController(tweetSheet, animated: true, completion: nil)
            
        }else{
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to Twitter to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
    
    
    
}