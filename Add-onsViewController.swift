//
//  Add-onsViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 2/5/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit

protocol Add_onsViewControllerDelegate{
    
}

class Add_onsViewController: UIViewController {

   
        // Do any additional setup after loading the view.
        
        
    
   
@IBOutlet weak var creditsAction: UIButton!
    
    @IBOutlet var horizontalSpacingConstraints: [NSLayoutConstraint]!
    
    @IBOutlet var verticalSpacingConstraints: [NSLayoutConstraint] = []

    @IBOutlet weak var backAction: UIButton!
   
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

      
        
    var delegate:Add_onsViewControllerDelegate? = nil

    // Dispose of any resources that can be recreated.





        
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


