//
//  JournalViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 2/5/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit

class JournalViewController: UIViewController {
    
    
  
    @IBOutlet weak var journalTextView: UITextView!

    @IBAction func backAction(sender: AnyObject)  { self.dismissViewControllerAnimated(true) { () -> Void in }
  
        
   
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        if let journalIsNotNill = defaults.objectForKey("journal") as? String {
            self.journalTextView.text = defaults.objectForKey("journal") as String
        }
        // Do any additional setup after loading the view.
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveData(sender: AnyObject)
    {var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(self.journalTextView.text, forKey: "journal")
        self.journalTextView.resignFirstResponder()
        var testObject: PFObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar";
        testObject.saveInBackgroundWithBlock { (success: Bool!, error: NSError!) -> Void in if (success != nil) { NSLog("Object created with id: \(testObject.objectId)") } else { NSLog("%@", error) } }
        
        //that line dismisses the keyboard
    
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