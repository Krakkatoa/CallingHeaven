//
//  CreditsViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 3/13/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation
import UIKit

class CreditsViewController: UIViewController {
    var test:String!
    
    
    @IBOutlet weak var backButton: UIButton!

@IBOutlet weak var creditAction: UITextView!
    
    

    @IBAction func backAction(sender: AnyObject){
    self.dismissViewControllerAnimated(true) { () -> Void in
            
       }
        
}
}