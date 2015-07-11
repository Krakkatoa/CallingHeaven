//
//  QuestionsEditViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 7/10/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//


import UIKit
import Parse
import Foundation

class QuestionsEditViewController: UIViewController {
    
    @IBOutlet weak var titleText: UITextField!
    
    @IBOutlet weak var noteText: UITextView!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var backAction: UIButton!
    
    @IBOutlet var horizontalSpacingConstraints: [NSLayoutConstraint]!
    
    @IBOutlet var verticalSpacingConstraints: [NSLayoutConstraint]! = []
    
    var objectId:String!
    var currentObject:PFObject!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var query = PFQuery(className:"Question")
        query.getObjectInBackgroundWithId(objectId) {
            (object, error) -> Void in
            if error != nil {
                println(error)
            } else {
                self.titleText.text = object["title"] as! String
                self.noteText.text = object["note"] as! String
                self.currentObject = object
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        
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
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
    @IBAction func backAction(sender: AnyObject){
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
        
    }
    
    @IBAction func saveAction(sender: AnyObject) {
        //we check if we already have our identifier, if we do we save a note
        currentObject["title"] = titleText.text
        currentObject["note"] = noteText.text
        currentObject.save()
        
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
        
        
    }
    
    @IBAction func readAction(sender: AnyObject) {
        
        
    }
    
    
    @IBAction func readAction2(sender: AnyObject) {
    }
    
}
