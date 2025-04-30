//
//  SXPRPlogifyController.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/27.
//

import UIKit
//Launch
import IQKeyboardManager

var currentuserloginINfomation:Dictionary<String,Any>?{
    
    get{
       
        return UserDefaults.standard.object(forKey: "plogtopia") as? [String:Any]
    }set{
        UserDefaults.standard.set(newValue, forKey: "plogtopia")
        
    }
    
}

class SXPRPlogifyController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AestheticPlogging()
        LifeSnippets()
        IQKeyboardManager.shared().isEnabled = true
    }
    
    private func AestheticPlogging()  {
        let MicroNarrative = UIImage(named: "Plogging")
        
        let StoryWeaving = UIImageView(image:MicroNarrative )
        StoryWeaving.frame = self.view.frame
        StoryWeaving.contentMode = .scaleAspectFill
        view.addSubview(StoryWeaving)
    }

    
    private func LifeSnippets()  {
        let MicroNarrative = UIImage(named: "MomentCapture")
        
        let StoryWeaving = UIImageView(image:MicroNarrative )
        StoryWeaving.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 50)
        view.addSubview(StoryWeaving)
    }
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let window = ((UIApplication.shared.delegate) as? AppDelegate)?.window
        
        if currentuserloginINfomation != nil {
            window?.rootViewController = SXPRMainbarPage.init()
        }else{
           
            window?.rootViewController = SXPRStyleTailorPage.init()
        }
    }
    
}
