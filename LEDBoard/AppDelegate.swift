//
//  AppDelegate.swift
//  horizontal
//
//  Created by J on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
           
        
        // sleep(Int): 런치스크린이 머무는 시간 (조금 위험할 수 있는 요소 이유는 이 곳에 최적화하기 위한 코드들이 들어오는데 그 코드를 실행을 지연시키기 때문에 코드 시간까지 합쳐서 실행시간이 늘어난다.)
        return true
    }
    


    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
//AppDelegate
//
//Process Lifecycle
//Session Lifecycle
//Session Created
//Session Discarded


//SceneDelegate
//
//UI Lifecycle
//Entered Foreground
//Become active

// 13 버전 이전에는 AppDelegate만 존재했지만 13이후로는 Scene이 생겼다. 이유로는 동시에 여러가지 화면을 foreground상태로 있고 다른거는 back에 다른거는 suspend 이런식으로 있어서 생명주기가 복잡해져 생기게 되었다.

// did will

// 12버전과 그 이후 그리고 생명주기

// 백그라운드에 있는 것처럼 보여도 꼭 백그라운드에 있는 것은 아니다. 왜냐하면 사용하는 기기와 어플마다 다르지만 자동적으로 자동으로 꺼지는 경우가 있다.
