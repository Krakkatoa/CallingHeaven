//
//  EntryViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 2/5/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit




class EntrylViewController: UIViewController {
    
    
    
    @IBOutlet weak var journalTextView: UITextView!
    
    @IBAction func backAction(sender: AnyObject)  { self.dismissViewControllerAnimated(true) { () -> Void in }
    }
    
    @IBAction func saveData(sender: AnyObject)
        
    { var journalEntry = PFObject(className:"JournalEntry")
        journalEntry["myJournal"] = "whatever"
        let myJournal = journalEntry["myJournal"] as String
        self.journalTextView.resignFirstResponder()
        journalEntry.saveInBackgroundWithBlock { (success: Bool!, error: NSError!) -> Void in if (success != nil) { NSLog("Object created with id: \(journalEntry.objectId)")
        } else {
            NSLog("%@", error)
            }
            
        }
    }
    
    
    @IBAction func retrieveData(sender: AnyObject)
        
    { var query = PFQuery(className:"JournalEntry")
        query.getObjectInBackgroundWithId("R8um4t8H7n") {
            (journalEntry: PFObject!, error: NSError!) -> Void in
            if error == nil {
                NSLog("%@", journalEntry)
            } else {
                NSLog("%@", error)
            }
        }
        
        
        
    }
    
    
    // Do any additional setup after loading the view.
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
        
        
        // Dispose of any resources that can be recreated.
        
        
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