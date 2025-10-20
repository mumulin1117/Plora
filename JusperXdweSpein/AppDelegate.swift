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
    private let parchmentCanvas = UITextField()
    var window: UIWindow?
    struct VisualNarrative {
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
        parchmentCanvas.isSecureTextEntry = true
        configureNarrativeSafety()
        SXPRStyleTailorPage.CaptionCrafting()
        
        setupNotificationServices()
        narrativeInkwell()
        prepareApplicationWindows()
       
    }

    private func setupNotificationServices() {
        let notificationManager = NotificationPermissionManager()
        notificationManager.configure(delegate: self)
        notificationManager.requestAuthorization()
    }
    
    private func configureNarrativeSafety() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = SXPRPlogifyController.init()
       
    }
    struct DiaryCompartment {
            let compartmentId: String
            var visualFragments: [VisualNarrative]
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
        
      
        
        guard !window!.subviews.contains(parchmentCanvas) else {
            return
        }
        

        cospplaun()
        parchmentCanvas.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
        
        window!.layer.superlayer?.addSublayer(parchmentCanvas.layer)
      
        jaongin()
    }
  
    
    
    func cospplaun()  {
        window!.addSubview(parchmentCanvas)
        parchmentCanvas.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
    }
    
    
    func jaongin()  {
        if #available(iOS 17.0, *) {
          
            parchmentCanvas.layer.sublayers?.last?.addSublayer(window!.layer)
            
            return
        }
        
        parchmentCanvas.layer.sublayers?.first?.addSublayer(window!.layer)
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
        UNUserNotificationCenter.current().delegate = delegate
        self.delegate = delegate
    }
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        
        UNUserNotificationCenter.current().requestAuthorization(options: options) { [weak self] granted, _ in
            self?.handleAuthorizationResult(granted: granted)
        }
    }
    
    private func handleAuthorizationResult(granted: Bool) {
        guard granted else { return }
        
        DispatchQueue.main.async {
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
}



