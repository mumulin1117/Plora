//
//  AppDelegate.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/25.
//

import UIKit
import SwiftyStoreKit
@main




class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configureNarrativeSafety()
        CaptionCrafting()
        window?.makeKeyAndVisible()
        return true
    }

    func CaptionCrafting()  {
        SwiftyStoreKit.completeTransactions(atomically: true) { Curator in
           
            for purchase in Curator {
              
                if (purchase.transaction.transactionState ==  .purchased || purchase.transaction.transactionState ==  .restored) {

                    self.moodBoardPost(AIPlogger:purchase)
                    if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                }
                
            }
            
            
        }
    }
    private func configureNarrativeSafety() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = SXPRPlogifyController.init()
       
    }
    
    func moodBoardPost(AIPlogger:Purchase)  {
        let downloads = AIPlogger.transaction.downloads
        if !downloads.isEmpty {
            SwiftyStoreKit.start(downloads)
        }
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
