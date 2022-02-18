//
//  AppDelegate.swift
//  VIPER_demo
//
//  Created by looiwenghoong on 18/02/2022.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window?.rootViewController = UIStoryboard(name: "Post", bundle: nil).instantiateInitialViewController()
//        self.window?.makeKeyAndVisible()
        return true
    }

}

