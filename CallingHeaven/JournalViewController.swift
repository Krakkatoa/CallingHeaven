//
//  JournalViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 2/5/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit

class JournalViewController: UIViewController {
    
    

    @IBAction func backAction(sender: AnyObject)  { self.dismissViewControllerAnimated(true) { () -> Void in }
  
   
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveData(sender: AnyObject){var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()}
    
    @IBAction func loadData(sender: AnyObject){}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}