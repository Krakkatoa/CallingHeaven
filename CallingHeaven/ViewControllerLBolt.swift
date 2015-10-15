//
//  ViewControllerLBolt.swift
//  CallingHeaven
//
//  Created by My Mac on 10/15/15.
//  Copyright © 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        // Initialize Leadbolt SDK with your api key
        AppTracker.startSession("Dj2jjUzxol8mtZMO4QX4UIQbY3D19ASE");
        
        AppTracker.loadModuleToCache("inapp");
    }
    
    func gameOver() {
        // call this when you want to display the Leadbolt Interstitial
        if(AppTracker.isAdReady("inapp")) {
            AppTracker.loadModule("inapp", viewController: self);
        }
    }
}
