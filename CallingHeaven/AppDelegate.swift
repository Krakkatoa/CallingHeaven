//
//  AppDelegate.swift
//  CallingHeaven
//
//  Created by My Mac on 11/26/14.
//  Copyright (c) 2014 Carmel Heart Media. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions
         launchOptions: [NSObject: AnyObject]?) -> Bool {
       
            override func viewDidLoad() {
                super.viewDidLoad()
                let completionBlock: () -> Void = {
                    // do something when it successfully starts the session
                }
                let errorBlock: (NSError!) -> Void = {error in
                    // check the error
                    println(error);
                }
                RevMobAds.startSessionWithAppID("55cab71794de7fc0788f1fac",
                    withSuccessHandler: completionBlock, andFailHandler: errorBlock);
            }
            
            
        
                // Parse Installation, Your own keys would go Here
        
        Parse.setApplicationId("Ew0oZ26ofyF8mnRnb4MGvSXhTWJlyxG8jbmlMDyE", clientKey: "ZesZ6eAug9C2auwQHJRMEVlz4vdtWmrgfrUAZgFH")
        var notificationType: UIUserNotificationType = UIUserNotificationType.Alert | UIUserNotificationType.Badge | UIUserNotificationType.Sound
        
        var settings: UIUserNotificationSettings = UIUserNotificationSettings(forTypes: notificationType, categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)
        UIApplication.sharedApplication().registerForRemoteNotifications()
        
        //This creates a identifier for each device, so we know which user is who
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(UIDevice.currentDevice().identifierForVendor.UUIDString, forKey: "UserIdentifier")
        return true
           
            
}
    
    
    

    //Push notifications
    func application(application: UIApplication, didRegisterUserNotificationSettings notificationSettings: UIUserNotificationSettings) {
        UIApplication.sharedApplication().registerForRemoteNotifications()
        
    }
    
    
    func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError) {
        println(error.localizedDescription)
        println("could not register: \(error)")
    }
    
    func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData){
        let currentInstallation: PFInstallation = PFInstallation.currentInstallation()
        currentInstallation.setDeviceTokenFromData(deviceToken)
        //  currentInstallation.saveInBackground() This has been creating an error.
    }
    
    func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject]) {
        PFPush.handlePush(userInfo)
    }
    
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

