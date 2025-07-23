//
//  AppDelegate.swift
//  CodeBaseRideTogether
//
//  Created by Kai Fu Jhuang on 2025/7/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: - Application Lifecycle
    
    func applicationWillResignActive(_ application: UIApplication) {
        // 应用程序即将进入非活动状态
        // 例如：来电、短信等
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // 应用程序进入后台
        // 在这里保存数据、释放资源等
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // 应用程序即将进入前台
        // 在这里恢复数据、重新加载资源等
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // 应用程序变为活动状态
        // 在这里重新开始任务、更新UI等
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // 应用程序即将终止
        // 在这里进行最后的清理工作
    }
}

