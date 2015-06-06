//
//  ViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 11/26/14.
//  Copyright (c) 2014 Carmel Heart Media. All rights reserved.
//


import UIKit

import Social

var messageString:String = " (Sent via the Calling Heaven App from Carmel Heart Media. Coming soon!)"
var quotebyString:String = " - "
var message2String:String = "#CallingHeaven #app"


class ViewController: UIViewController
{
    
    @IBOutlet weak var quotesLabel: UITextView!
    
    @IBOutlet weak var quotesLabel2: UITextView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameLabel2: UILabel!
    
    @IBOutlet weak var pictureSaints: UIImageView!
    
    @IBOutlet weak var pictureSaints2: UIImageView!
    
    
    @IBOutlet weak var teresaButton: UIButton!
    @IBOutlet weak var johnOfTheCross: UIButton!
    @IBOutlet weak var thereseButton: UIButton!
    @IBOutlet weak var edithButton: UIButton!
    
    
    @IBOutlet weak var jesusButton: UIButton!
    
    @IBOutlet weak var testButton: UIButton!
    
    @IBOutlet weak var phoneImage: UIImageView!
    
    //2nd View Controller
    
    
    

    
    @IBOutlet weak var jesus2Button: UIButton!
    
    
    @IBOutlet weak var titusButton: UIButton!
    
    @IBOutlet weak var mariamBoucardy: UIButton!
    
    @IBOutlet weak var andesButton: UIButton!
    
    @IBOutlet weak var lizButton: UIButton!
    
    @IBOutlet weak var segue2Button: UIButton!
    
    @IBOutlet var horizontalSpacingConstraints: [NSLayoutConstraint]!
    
    @IBOutlet var verticalSpacingConstraints: [NSLayoutConstraint]!
    
    @IBAction func arrowAction(sender: AnyObject) { self.dismissViewControllerAnimated(true) { () -> Void in }
    }
    
    
    //VC 1
    
    var names: [String] = ["St. Teresa of Avila", "St. John of the Cross", "St. Therese of Lisieux", "St. Edith Stein", "Bl. Titus Brandsma", "Bl. Mariam Baouardy", "St. Teresa of the Andes", "Bl. Elizabeth of the Trinity", "Jesus Christ"]
    
    let teresaQuotes = TeresaQuotes ()
    let johnQuotes =  JohnQuotes ()
    let thereseQuotes = ThereseQuotes ()
    let edithQuotes = EdithQuotes ()
    let jesusQuotes = JesusQuotes ()
    
    
    //VC 2
    
    let titusQuotes = TitusQuotes ()
    let mariamQuotes = MariamQuotes ()
    let andesQuotes = AndesQuotes ()
    let lizQuotes = LizQuotes ()
    
    
    let imageTeresa = UIImage(named:"teresa-goldframe.png")
    
    let imageJohn = UIImage (named: "stjohn-goldframe.png")
    
    let imageTherese = UIImage(named: "therese-goldframe.png")
    
    let imageEdith = UIImage (named: "edith-goldframe")
    
    let imageJesus = UIImage (named: "jesus-goldframe.png")
    
    let imageTitus = UIImage (named: "titus-goldframe.png")
    
    let imageMariam = UIImage (named: "mariam-goldframe.png")
    
    let imageAndes = UIImage (named: "andes-goldframe.png")
    
    let imageLiz = UIImage (named: "elizabeth-goldframe.png")
    
    
    
    //VC1 with Segue to VC3
    
    var temporalValue:String = "Empty"
    var temporalBio = ""
    var temporalImage:UIImage!
    var temporalButton: UIButton!
    
    
    
    @IBAction func TeresaAction(sender: AnyObject) {
        phoneImage.hidden = true
        temporalBio = "St. Teresa of Avila "
        temporalImage = imageTeresa
        pictureSaints.image = imageTeresa
        quotesLabel.text = teresaQuotes.randomFact()
        nameLabel.text = names[0]
    }
    
    @IBAction func johnAction(sender: AnyObject) {
        phoneImage.hidden = true
        temporalBio = "St. John of the Cross"
        temporalImage = imageJohn
        pictureSaints.image = imageJohn
        quotesLabel.text = johnQuotes.randomFact()
        nameLabel.text = names[1]
    }
    
    
    @IBAction func thereseAction(sender: AnyObject) {
        phoneImage.hidden = true
        temporalBio = "St. Therese of Lisieux"
        temporalImage = imageTherese
        pictureSaints.image = imageTherese
        quotesLabel.text = thereseQuotes.randomFact()
        nameLabel.text = names[2]     }
    
    
    @IBAction func EdithAction(sender: AnyObject) {
        phoneImage.hidden = true
        temporalBio = "St. Edith Stein"
        temporalImage = imageEdith
        pictureSaints.image = imageEdith
        quotesLabel.text = edithQuotes.randomFact()
        nameLabel.text = names[3]
    }
    
    @IBAction func jesusButton(sender: AnyObject) {
        phoneImage.hidden = true
        temporalBio = "Jesus Christ"
        temporalImage = imageJesus
        pictureSaints.image = imageJesus
        quotesLabel.text = jesusQuotes.randomFact ()
        nameLabel.text = names [8]
        
    }
    
    
    //View Controller 2
    
    @IBAction func jesus2Button(sender: AnyObject) {
        temporalBio = "Jesus Christ"
        temporalImage = imageJesus
        pictureSaints2.image = imageJesus
        quotesLabel2.text = jesusQuotes.randomFact()
        nameLabel2.text = names[8]
    }
    
    
    
    @IBAction func titusAction(sender: AnyObject) {
        temporalBio = "Bl. Titus Brandsma"
        temporalImage = imageTitus
        pictureSaints2.image = imageTitus
        quotesLabel2.text = titusQuotes.randomFact ()
        nameLabel2.text = names [4]
    }
    
    
    @IBAction func mariamAction(sender: AnyObject) {
        temporalBio = "Bl. Mariam Baouardy"
        temporalImage = imageMariam
        pictureSaints2.image = imageMariam
        quotesLabel2.text = mariamQuotes.randomFact ()
        nameLabel2.text = names [5]
    }
    
    @IBAction func andesAction (sender: AnyObject) {
        temporalBio = "St. Teresa of the Andes"
        temporalImage = imageAndes
        pictureSaints2.image = imageAndes
        quotesLabel2.text = andesQuotes.randomFact ()
        nameLabel2.text = names [6]
    }
    
    @IBAction func lizAction (sender: AnyObject) {
        temporalBio = "Bl. Elizabeth of the Trinity"
        temporalImage = imageLiz
        pictureSaints2.image = imageLiz
        quotesLabel2.text = lizQuotes.randomFact ()
        nameLabel2.text = names [7]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize = UIScreen.mainScreen().bounds.size
        let verticalCoef = screenSize.height / 320.0
        let horizontalCoef = screenSize.width / 568.0
        
        for constraint in verticalSpacingConstraints {
            constraint.constant *= verticalCoef
        }
        
        for constraint in horizontalSpacingConstraints {
            constraint.constant *= horizontalCoef
        }
    }
    // segue to VC 3
    
    @IBAction func testAction(sender: AnyObject) {
        let saintView = self.storyboard?.instantiateViewControllerWithIdentifier("saintView") as! saintViewController
        saintView.bioTemporal = temporalBio
        
        
        
        navigationController?.pushViewController(saintView, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "bioProfile"{
            let saintView = segue.destinationViewController as! saintViewController
            saintView.bioTemporal = temporalBio
            saintView.nameTemporal = nameLabel.text
            saintView.temporalImage = temporalImage
            saintView.lifeTemporal = nameLabel.text
            saintView.quotesTemporal = nameLabel.text
        }
        
        if segue.identifier == "bioProfile2"{
            let saintView = segue.destinationViewController as! saintViewController
            saintView.bioTemporal = temporalBio
            saintView.nameTemporal = nameLabel2.text
            saintView.temporalImage = temporalImage
            saintView.lifeTemporal = nameLabel2.text
            saintView.quotesTemporal = nameLabel2.text
        }
        
    }
    
    //Social Media Integration
    
    @IBAction func shareAction(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeFacebook)
            
            var postingString = (quotesLabel.text)! + quotebyString + (nameLabel.text)! + messageString
            
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
            
            var postingString = (quotesLabel.text)! + quotebyString + (nameLabel.text)! + message2String
            
            tweetSheet.setInitialText  (postingString)
            
            self.presentViewController(tweetSheet, animated: true, completion: nil)
            
        }else{
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to Twitter to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
    //page 2
    
    
    @IBAction func shareFacebook(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeFacebook)
            
            var postingString = (quotesLabel2.text)! + quotebyString + (nameLabel2.text)! + messageString
            
            facebookSheet.setInitialText (postingString)
            
            
            self.presentViewController(facebookSheet, animated: true, completion: nil)
        }else{
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to Facebook to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
    }
    
    
    
    @IBAction func shareTwitter2(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            
            var tweetSheet:SLComposeViewController = SLComposeViewController (forServiceType:SLServiceTypeTwitter)
            
            var postingString = (quotesLabel2.text)! + quotebyString + (nameLabel2.text)! + message2String
            
            tweetSheet.setInitialText  (postingString)
            
            self.presentViewController(tweetSheet, animated: true, completion: nil)
            
        }else{
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to Twitter to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
    
}