import UIKit

import Social

class saintViewController: UIViewController {
    var test:String!
    
    
    
    @IBOutlet var bioLabel: UILabel!
    
    
    @IBOutlet weak var bioLabel2: UILabel!
    
    
    @IBOutlet weak var bioLabel3: UILabel!
    
    var bioTemporal:String!
    var nameTemporal:String!
    var lifeTemporal:String!
    var temporalImage:UIImage!
    var quotesTemporal:String!
    
    
    @IBOutlet var testLabel: UITextView!
    @IBOutlet var saintImage: UIImageView!
    
    @IBOutlet weak var journalButton: UIButton!
    
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
        case "St. Mariam Baouardy":(testLabel.text = mariamPrayers.randomFact ())
        case "Bl. Elizabeth of the Trinity":(testLabel.text = lizPrayers.randomFact ())
        case "St. Teresa of the Andes":(testLabel.text = andesPrayers.randomFact ())
        case "Bl. Titus Brandsma":(testLabel.text = titusPrayers.randomFact ())
            
            
        default: print("Something else") }
    }
    
    let teresaPrayers = TeresaPrayers ()
    let johnPrayers = JohnPrayers ()
    let theresePrayers = TheresePrayers ()
    let edithPrayers = EdithPrayers ()
    let jesusPrayers = JesusPrayers ()
    let mariamPrayers = MariamPrayers ()
    let lizPrayers = LizPrayers ()
    let andesPrayers = AndesPrayers ()
    let titusPrayers = TitusPrayers ()
    
    
    @IBOutlet weak var heartLifeAction: UIButton!
    
    
    @IBAction func heartLifeAction(sender: AnyObject) {
        switch lifeTemporal
        { case "St. Teresa of Avila":
            (testLabel.text = teresaLife.randomFact())
        case "St. John of the Cross": (testLabel.text = johnLife.randomFact())
        case "St. Therese of Lisieux": (testLabel.text = thereseLife.randomFact())
        case "St. Edith Stein": (testLabel.text = edithLife.randomFact ())
        case "Jesus Christ":(testLabel.text = jesusLife.randomFact ())
        case "St. Mariam Baouardy":(testLabel.text = mariamLife.randomFact ())
        case "Bl. Elizabeth of the Trinity":(testLabel.text = lizLife.randomFact ())
        case "St. Teresa of the Andes":(testLabel.text = andesLife.randomFact ())
        case "Bl. Titus Brandsma":(testLabel.text = titusLife.randomFact ())
        default: print("Something else") }
        }
    
    let teresaLife = TeresaLife ()
    let johnLife = JohnLife ()
    let thereseLife = ThereseLife ()
    let edithLife = EdithLife ()
    let jesusLife = JesusLife ()
    let mariamLife = MariamLife ()
    let lizLife = LizLife ()
    let andesLife = AndesLife ()
    let titusLife = TitusLife1 ()
    
    
    
    @IBAction func quotesAction(sender: AnyObject) {
    switch quotesTemporal
    { case "St. Teresa of Avila":
    (testLabel.text = teresaQuotes.randomFact())
    case "St. John of the Cross": (testLabel.text = johnQuotes.randomFact())
    case "St. Therese of Lisieux": (testLabel.text = thereseQuotes.randomFact())
    case "St. Edith Stein": (testLabel.text = edithQuotes.randomFact ())
    case "Jesus Christ":(testLabel.text = jesusQuotes.randomFact ())
    case "St. Mariam Baouardy":(testLabel.text = mariamQuotes.randomFact ())
    case "Bl. Elizabeth of the Trinity":(testLabel.text = lizQuotes.randomFact ())
    case "St. Teresa of the Andes":(testLabel.text = andesQuotes.randomFact ())
    case "Bl. Titus Brandsma":(testLabel.text = titusQuotes.randomFact ())
    default: print("Something else") }
    
    }
    
    let teresaQuotes = TeresaQuotes ()
    let johnQuotes = JohnQuotes ()
    let thereseQuotes = ThereseQuotes ()
    let edithQuotes = EdithQuotes ()
    let jesusQuotes = JesusQuotes ()
    let mariamQuotes = MariamQuotes ()
    let lizQuotes = LizQuotes ()
    let andesQuotes = AndesQuotes ()
    let titusQuotes = TitusQuotes ()
    
    @IBOutlet var horizontalSpacingConstraints: [NSLayoutConstraint]!
    
    @IBOutlet var verticalSpacingConstraints: [NSLayoutConstraint]!
    
    
    override func viewDidLoad() {
        
        //This tells which switch command will relate to each object in the segue.
        
        bioLabel.text = nameTemporal
        saintImage.image = temporalImage
        bioLabel2.text = lifeTemporal
        bioLabel3.text = quotesTemporal
        
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
            
            let facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeFacebook)
            
            let postingString = (testLabel.text)! + quotebyString + (bioLabel.text)! + messageString
            
            facebookSheet.setInitialText (postingString)
            
            
            self.presentViewController(facebookSheet, animated: true, completion: nil)
        }else{
            
            let alert = UIAlertController(title: "Accounts", message: "Please login to Facebook to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
    }
    
    
    
    @IBAction func shareTwitter(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            
            let tweetSheet:SLComposeViewController = SLComposeViewController (forServiceType:SLServiceTypeTwitter)
            
            let postingString = (testLabel.text)! + quotebyString + (bioLabel.text)! + message2String
            
            tweetSheet.setInitialText  (postingString)
            
            self.presentViewController(tweetSheet, animated: true, completion: nil)
            
        }else{
            
            let alert = UIAlertController(title: "Accounts", message: "Please login to Twitter to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
    
    
    
}