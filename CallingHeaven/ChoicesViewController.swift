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
    
    @IBOutlet var horizontalSpacingConstraints: [NSLayoutConstraint]!
    
    @IBOutlet var verticalSpacingConstraints: [NSLayoutConstraint] = []
   
    
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
}