//
//  SceneDelegate.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 16.11.2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
                
        let mainVC = MainViewControllerRouter.assembly()

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = mainVC
            
            self.window = window
            window.makeKeyAndVisible()
        }
        
    }

}

