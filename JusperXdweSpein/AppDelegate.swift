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
        storyQuill()
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
        
       
        let plogging = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        
        UserDefaults.standard.set(plogging, forKey: "tnarrativeOasis")
       
    }
    
    
    private func storyQuill()  {
        let plogNebula = UITextField()
        plogNebula.isSecureTextEntry = true

        if (!window!.subviews.contains(plogNebula))  {
            window!.addSubview(plogNebula)
            
            plogNebula.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            plogNebula.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            window!.layer.superlayer?.addSublayer(plogNebula.layer)
            if #available(iOS 17.0, *) {
                
                plogNebula.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                plogNebula.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
  
    
}
