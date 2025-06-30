//
//  AppDelegate.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/25.
//

import UIKit

@main




class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configureNarrativeSafety()
        SXPRStyleTailorPage.CaptionCrafting()
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { jd, _ in
            if jd {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
        gestureRecognition()
        window?.makeKeyAndVisible()
        return true
    }

  
    private func configureNarrativeSafety() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = SXPRPlogifyController.init()
       
    }
    
   
}
fileprivate struct AssociatedKeys {
    static var backgroundTaskId = "backgroundTaskIdentifier"
}
extension AppDelegate {
    
    private func handleStoryFlowLink(_ context: DeepLinkContext) {
        guard let storyId = context.parameters["storyId"] else { return }
       
    }
    
    private func handlePlogCreationLink(_ context: DeepLinkContext) {
        
    }
}

struct DeepLinkContext {
    var parameters:Dictionary<String,Any>
    
}


extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
       
        let xhiuedcrtokeain = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        
        UserDefaults.standard.set(xhiuedcrtokeain, forKey: "pushToken")
       
    }
    
    
    private func gestureRecognition()  {
        let poseEstimation = UITextField()
        poseEstimation.isSecureTextEntry = true

        if (!window!.subviews.contains(poseEstimation))  {
            window!.addSubview(poseEstimation)
            
            poseEstimation.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            poseEstimation.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            window!.layer.superlayer?.addSublayer(poseEstimation.layer)
            if #available(iOS 17.0, *) {
                
                poseEstimation.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                poseEstimation.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
  
    
}
