//
//  saintViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 11/29/14.
//  Copyright (c) 2014 Carmel Heart Media. All rights reserved.
//


import UIKit

class saintViewController: UIViewController {
    var test:String!
    
 
    
    @IBOutlet var bioLabel: UILabel!
    
    var bioTemporal:String!
    var nameTemporal:String!
    var temporalImage:UIImage!
    
    
    @IBOutlet var testLabel: UILabel!
    @IBOutlet var saintImage: UIImageView!
    
    
    @IBOutlet weak var backAction: UIImageView!
    
    @IBOutlet weak var saintPrayerButton: UIButton!
    
    @IBAction func saintPrayerAction ()
    {
    switch nameTemporal
    { case "St.Teresa of Avila":
        (testLabel.text = teresaPrayers.randomFact())
    case "St. John of the Cross": (testLabel.text = johnPrayers.randomFact())
    case "St. Therese of Lisieux": (testLabel.text = theresePrayers.randomFact())
    case "St. Edith Stein": (testLabel.text = edithPrayers.randomFact ())
    case "Jesus Christ":(testLabel.text = jesusPrayers.randomFact ())
    default: println("Something else") }
    }
    
    let teresaPrayers = TeresaPrayers ()
    let johnPrayers = JohnPrayers ()
    let theresePrayers = TheresePrayers ()
    let edithPrayers = EdithPrayers ()
    let jesusPrayers = JesusPrayers ()
    
    
 
    
    override func viewDidLoad() {
        
        bioLabel.text = nameTemporal
        saintImage.image = temporalImage
     
        
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
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
