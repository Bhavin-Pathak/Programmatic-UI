//
//  SceneDelegate.swift
//  Programmatic-UI
//
//  Created by MacBookPro on 31/02/1946 Saka.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        //MARK: Assign _ to Var Name
        guard let windowScnes = (scene as? UIWindowScene) else { return }
        //MARK: Navigationcontoller Mean StackView Like Main HomeScreen Will Attached With NavigationController
        let navigationCon = UINavigationController(rootViewController: TBFristView())
        //MARK: Assign windowScnes To UIWindows That Cover Whole Screen
        window = UIWindow(frame: windowScnes.coordinateSpace.bounds)
        //MARK: Make Windows to Windoscnes And Assign Decalare Variables On Windowscne
        window?.windowScene = windowScnes
        //MARK: Make Root View Mean Frist View Then Window Apear
        window?.rootViewController = navigationCon
        //MARK: Visiblity
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}
