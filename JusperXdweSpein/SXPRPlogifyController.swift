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
    private let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AestheticPlogging()
        LifeSnippets()
        IQKeyboardManager.shared().isEnabled = true
       
        label.alpha = 0
        label.textColor = .white
        label.font = UIFont.italicSystemFont(ofSize: 15)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
    }
    
    private func AestheticPlogging()  {
        let MicroNarrative = UIImage(named: "Plogging")
        
        let StoryWeaving = UIImageView(image:MicroNarrative )
        StoryWeaving.frame = self.view.frame
        StoryWeaving.contentMode = .scaleAspectFill
        view.addSubview(StoryWeaving)
    }

    private func showPloraQuoteBanner() {
        let banner = UIView(frame: CGRect(x: 30, y: 60, width: view.bounds.width - 60, height: 60))
        let randomQuote = [
            "Capture the moment. Share your story.",
            "Everyday beauty, one post at a time.",
            "Your lifestyle, your voice—make it shareable.",
            "Turn life into a visual narrative.",
            "Connect through stories, inspire through moments.",
            "A quiet coffee, a bold adventure—every story matters.",
            "Let your creativity flow with Plora.",
            "Document, curate, and inspire.",
            "Your next story starts here.",
            "Share life’s highlights, big and small."
        ].randomElement() ?? ""
       
        banner.alpha = 0
        view.addSubview(banner)
        
        UIView.animate(withDuration: 0.8) {
            banner.alpha = 1
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            UIView.animate(withDuration: 0.6, animations: {
                banner.alpha = 0
            }, completion: { _ in
                banner.removeFromSuperview()
            })
        }
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
