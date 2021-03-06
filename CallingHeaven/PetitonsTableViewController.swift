//  PetitionsTableViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 2/24/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit

import Parse

class PetitionsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var notesData:NSMutableArray = []
    
    
    
    @IBOutlet var petitionsTableView: UITableView!
    override func viewDidLoad() {
        //When the page is loaded we call parse using our identifier and get all the notes, and we save them in our array of notesData
        
        self.petitionsTableView?.estimatedRowHeight = 107.0
        super.viewDidLoad()
        self.petitionsTableView?.rowHeight = UITableViewAutomaticDimension
        let nib = UINib(nibName: "NoteTableViewCell", bundle: nil)
        
        petitionsTableView?.registerNib(nib, forCellReuseIdentifier: "petitionsIdentifier")
        
    }
    
    override func viewWillAppear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        if let identifier = defaults.stringForKey("UserIdentifier")
        {
            let query = PFQuery(className:"Petition")
            query.orderByDescending("updatedAt")
            query.whereKey("UserIdentifier", equalTo:identifier)
            query.findObjectsInBackgroundWithBlock {
                (objects: [AnyObject]!, error: NSError!) -> Void in
                if error == nil {
                    self.notesData = NSMutableArray(array:objects)
                    self.petitionsTableView.reloadData()
                    // The find succeeded.
                    print(self.notesData)
                } else {
                    // Log details of the failure
                    NSLog("Error: %@ %@", error, error.userInfo)
                }
            }
            
        }
    }
    
    
    @IBAction func backAction(sender: AnyObject){
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView,editActionsForRowAtIndexPath indexPath: NSIndexPath)-> [UITableViewRowAction]? {
        
        let deleteAction = UITableViewRowAction(style: .Default, title: "Delete") { (action, indexPath) -> Void in
            tableView.editing = false
            let rowData: AnyObject = self.notesData[indexPath.row]
           // _:PFInstallation = PFInstallation.currentInstallation()
            
            let objectId = rowData.objectId
            let object: PFObject = PFObject(withoutDataWithClassName: "Petition", objectId: objectId)
            object.delete()
            
            
            self.notesData.removeObjectAtIndex(indexPath.row)
            self.petitionsTableView!.reloadData()
            //      self.feedsData.removeObjectAtIndex(indexPath.row)
            //    self.feedsTableView?.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        }
        
        let editAction = UITableViewRowAction(style: .Default, title: "Edit") { (action, indexPath) -> Void in
            tableView.editing = false
            let rowData: AnyObject = self.notesData[indexPath.row]
       //     _:PFInstallation = PFInstallation.currentInstallation()
            
            let objectId = rowData.objectId
            //creates viewcontroller with code and then assigns value to the object id and makes a push
            let destinationVC = self.storyboard?.instantiateViewControllerWithIdentifier("PetitionsEditScreen") as! PetitionsEditViewController
            destinationVC.objectId = objectId
            // self.navigationController?.pushViewController(destinationVC, animated: true)
            self.presentViewController(destinationVC, animated: true, completion: nil)
            
            //call the new view and send the object id
            
            
            
        }
        
        editAction.backgroundColor = UIColor.blackColor()
        
        // return [deleteAction, shareAction] No feed share for this version
        return [deleteAction,editAction]
    }
    
    
    //Defines how big is the tableView
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesData.count
    }
    
    //Asigns a value to each table cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //we create a row data with the value of the index on our notes array and then assing the values
        let rowData: AnyObject = self.notesData[indexPath.row]
        let cell: NoteTableViewCell = tableView.dequeueReusableCellWithIdentifier("petitionsIdentifier", forIndexPath: indexPath) as! NoteTableViewCell
        
        print(rowData.createdAt)
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .NoStyle
        
        let dateCell = formatter.stringFromDate(rowData.createdAt)
        cell.loadNote(dateCell, titleView: rowData["title"] as! String, subtitleView: rowData["note"] as! String)
        // Configure the cell...
        
        return cell
    }
    //allows to swipe
    
    func tableView(tableView: UITableView,commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
    }
}