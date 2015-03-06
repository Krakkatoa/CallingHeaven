//
//  ChoicesViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 3/1/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

import UIKit

class ChoicesViewController: UIViewController
{


    @IBOutlet weak var petitionsAction: UIButton!
    
    @IBOutlet weak var questionsAction: UIButton!
    
    @IBOutlet weak var thoughtsAction: UIButton!
    
   
    
    @IBAction func backAction(sender: AnyObject){
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
    }
    
    
}