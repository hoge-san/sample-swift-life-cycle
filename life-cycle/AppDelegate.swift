//
//  AppDelegate.swift
//  life-cycle
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // アプリ起動後に呼ばれる
        print("===== didFinishLaunchingWithOptions" + self.getState())
        return true
    }

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("===== willFinishLaunchingWithOptions" + self.getState())
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Active状態からInactive状態に遷移する時に呼ばれる
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.

        print("===== applicationWillResignActive" + self.getState())
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

        print("===== applicationDidEnterBackground" + self.getState())
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.

        print("===== applicationWillEnterForeground" + self.getState())
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

        print("===== applicationDidBecomeActive" + self.getState())
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.

        print("===== applicationWillTerminate" + self.getState())
    }



    private func getState() -> String{
        let app = UIApplication.shared
        switch app.applicationState {
        case .active:
            return " [Active] "

        case .background:
            return " [Background] "

        case .inactive:
            return " [Inactive] "

        default:
            return " [Unknown] "
        }
    }
}

