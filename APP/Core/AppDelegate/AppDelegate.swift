//
//  AppDelegate.swift
//  APP
//
//  Created by funny on 2018/5/30.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

#if DEBUG
import CocoaDebug
#endif

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white

        self.window?.rootViewController = BaseTabBarController()

        self.window?.makeKeyAndVisible()

        self.initLog()

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

extension AppDelegate {

    final private func initLog() -> () {

        let log = XCGLogger.default
        #if DEBUG
        log.setup(level: .debug, showThreadName: true, showLevel: true, showFileNames: true, showLineNumbers: true)
        #else
        log.setup(level: .severe, showThreadName: true, showLevel: true, showFileNames: true, showLineNumbers: true)
        #endif


        #if DEBUG
        CocoaDebug.enable()
        #endif
    }
}










