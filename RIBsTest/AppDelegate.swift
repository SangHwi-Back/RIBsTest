//
//  AppDelegate.swift
//  RIBsTest
//
//  Created by 백상휘 on 2022/10/30.
//

import UIKit
import RIBs

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  private var launchRouter: LaunchRouting?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    self.window = window
    
    let router = AppRootBuilder(dependency: AppComponent()).build()
    self.launchRouter = router
    launchRouter?.launchFromWindow(window)
//    .launch(from: window)

    return true
  }
}

