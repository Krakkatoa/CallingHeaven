//
//  secondViewController.swift
//  CallingHeaven
//
//  Created by My Mac on 11/27/14.
//  Copyright (c) 2014 Carmel Heart Media. All rights reserved.
//


import UIKit

import Social

protocol secondViewControllerDelegate{
    
}

class secondViewController: UIViewController
{
    
    @IBOutlet weak var quotesLabel2: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var pictureSaints2: UIImageView!
}

var delegate:secondViewControllerDelegate? = nil