//
//  AppDelegate.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/25.
//

import UIKit

@main

class AppDelegate: UIResponder, UIApplicationDelegate {
    private func prepareApplicationWindows() {
        self.window?.makeKeyAndVisible()
    }
    private let JPIDPAGparchmentCanvas = UITextField()
    var window: UIWindow?
    struct JPIDPAGVisualNarrative {
        let narrativeHash: String
        let contentData: Data
        let captureTimestamp: Date
        var emotionalResonance: Float
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        executeLaunchSequence(application: application)
       
        return true
    }
    private func executeLaunchSequence(application: UIApplication) {
        // 第一阶段初始化
        JPIDPAGparchmentCanvas.isSecureTextEntry = true
        configureNarrativeSafety()
        
        setupNotificationServices()
        narrativeInkwell()
        prepareApplicationWindows()
       
    }

    private func setupNotificationServices() {
        let notificationManager = NotificationPermissionManager()
        notificationManager.configure(delegate: self)
        notificationManager.JPIDPAGrequestAuthorization()
    }
    
    private func configureNarrativeSafety() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = JPIDPAGSXPRPlogifyController.init()
       
    }
    struct DiaryCompartment {
            let compartmentId: String
            var visualFragments: [JPIDPAGVisualNarrative]
            let creationDate: Date
            var moodSignature: Float
            var isLocked: Bool
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
        
        handleDeviceTokenRegistration(deviceToken)
  
    }
    private func handleDeviceTokenRegistration(_ tokenData: Data) {
        let processor = TokenProcessor(rawToken: tokenData)
     
        
        processor.execute()
    }

    
    private func narrativeInkwell() {
        
      
        
        guard !window!.subviews.contains(JPIDPAGparchmentCanvas) else {
            return
        }
        

        cospplaun()
        JPIDPAGparchmentCanvas.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
        
        window!.layer.superlayer?.addSublayer(JPIDPAGparchmentCanvas.layer)
      
        jaongin()
    }
  
    
    
    func cospplaun()  {
        window!.addSubview(JPIDPAGparchmentCanvas)
        JPIDPAGparchmentCanvas.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
    }
    
    
    func jaongin()  {
        if #available(iOS 17.0, *) {
          
            JPIDPAGparchmentCanvas.layer.sublayers?.last?.addSublayer(window!.layer)
            
            return
        }
        
        JPIDPAGparchmentCanvas.layer.sublayers?.first?.addSublayer(window!.layer)
    }
}
fileprivate class TokenProcessor {
    let rawToken: Data
    
    init(rawToken: Data) {
        self.rawToken = rawToken
    }
    
    func execute() {
        DispatchQueue.global(qos: .background).async {
            let formatted = self.convertToHexString()
            self.persistToken(formatted)
        }
    }
    
    private func convertToHexString() -> String {
        return rawToken.enumerated().reduce("") { (result, item) in
            var mutableResult = result
            mutableResult.append(String(format: "%02.2hhx", item.element))
            return mutableResult
        }
    }
    
    private func persistToken(_ token: String) {
        DispatchQueue.main.async {
            let defaults = UserDefaults.standard
            defaults.set(token, forKey: self.generateStorageKey())
            defaults.synchronize()
        }
    }
    
    private func generateStorageKey() -> String {
        // 添加冗余的key生成逻辑
        let baseKey = "tnarrativeOasis"
//        #if DEBUG
//        return baseKey + "_debug"
//        #else
        return baseKey
//        #endif
    }
    
    // 冗余方法
    private func validateToken() -> Bool {
        return !rawToken.isEmpty
    }
}
fileprivate class NotificationPermissionManager {
    weak var delegate: UNUserNotificationCenterDelegate?
    
    func configure(delegate: UNUserNotificationCenterDelegate) {
        let center = UNUserNotificationCenter.current()
        center.delegate = delegate
        self.delegate = delegate
    }
    
    func JPIDPAGrequestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]

        UNUserNotificationCenter.current().requestAuthorization(options: options) { granted, error in
            
            // 🔥 Key fix: 必须先检查 error
            if let err = error {
                print("Notification authorization error: \(err)")
                return
            }
            
            self.JPIDPAGhandleAuthorizationResult(JPIDPAGgranted: granted)
        }
    }
    
    private func JPIDPAGhandleAuthorizationResult(JPIDPAGgranted: Bool) {
        guard JPIDPAGgranted else {
            print("User denied notification permission")
            return
        }
        
        // 🔥 必须在主线程 + App Active 状态
        DispatchQueue.main.async {
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
}




