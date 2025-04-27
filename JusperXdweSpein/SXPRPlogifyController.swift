//
//  SXPRPlogifyController.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/27.
//

import UIKit
//Launch
import IQKeyboardManager

var loguserMofdal:DBHUs_er?{
    
    get{
        if let usedloging = UserDefaults.standard.object(forKey: "loginUserDBN") as? [String:String] {
            return DBHUs_er.init(dic: usedloging,isfromLocal: true)
        }
        return nil
    }set{
        if let newvakf = newValue {
            
            UserDefaults.standard.set(newvakf.modoalTRansforDic(), forKey: "loginUserDBN")
        }else{
            UserDefaults.standard.set(nil, forKey: "loginUserDBN")
        }
        
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
        
        if loguserMofdal != nil {
            window?.rootViewController = SXPRMainbarPage.init()
        }else{
           
            window?.rootViewController = SXPRStyleTailorPage.init()
        }
    }
    
}
