//
//  PetitionsViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 2/24/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

import UIKit

import Parse

class PetitionsViewController: UIViewController {
    
    @IBOutlet weak var titleText: UITextField!
   
    @IBOutlet weak var noteText: UITextView!
 
    
    @IBOutlet weak var backAction: UIButton!
    
    @IBOutlet var horizontalSpacingConstraints: [NSLayoutConstraint]!
    
    @IBOutlet var verticalSpacingConstraints: [NSLayoutConstraint] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    
}


@IBAction func backAction(sender: AnyObject){
    self.dismissViewControllerAnimated(true) { () -> Void in
        
    }
   
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
    
    @IBAction func saveAction(sender: AnyObject) {
        //we check if we already have our identifier, if we do we save a note in parse
        let defaults = NSUserDefaults.standardUserDefaults()
        if let identifier = defaults.stringForKey("UserIdentifier")
        {
            let note = PFObject(className:"Petition")
            note["title"] = titleText.text
            note["note"] = noteText.text
            note["UserIdentifier"] = identifier
            note.saveInBackgroundWithBlock {
                (success: Bool, error: NSError!) -> Void in
                if (success) {
                    // The object has been saved.
                    print("Note Saved!")
                    
                    //read action
                    self.titleText.text = ""
                    self.noteText.text = ""
                    self.performSegueWithIdentifier("petitionReadSegue", sender: nil)
                    
                } else {
                    print(error.description)
                    // There was a problem, check error.description
                }
            }
        }
        
        
    }
    
    @IBAction func readAction(sender: AnyObject) {
        
    }
    
    
    @IBAction func readAction2(sender: AnyObject) {
        
    }
}



    //
    
       /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    // Change the mood operator based on input




