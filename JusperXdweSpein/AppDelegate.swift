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
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = SXPRPlogifyController.init()
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
    
    
    func moodBoardPost(AIPlogger:Purchase)  {
        let downloads = AIPlogger.transaction.downloads
        if !downloads.isEmpty {
            SwiftyStoreKit.start(downloads)
        }
    }
}

