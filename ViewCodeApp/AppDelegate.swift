//
//  AppDelegate.swift
//  ViewCodeApp
//
//  Created by Jose Javier on 07/11/19.
//  Copyright © 2019 JLApps. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)

        let loginViewController = LoginViewController()
        
        window?.rootViewController = loginViewController
        
        window?.makeKeyAndVisible()
        
        return true
    }


}

