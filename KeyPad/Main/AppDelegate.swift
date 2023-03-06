//
//  AppDelegate.swift
//  KeyPad
//
//  Created by Alam, Mahjabin | Natasha | ECMPD on 2023/03/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = KeyPadViewController()
        window?.makeKeyAndVisible()
        return true
    }

    
}

