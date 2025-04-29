//
//  SXPRStyleTailorPage.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/27.
//

import UIKit

class SXPRStyleTailorPage: UIViewController {
    
    @IBOutlet weak var PloggerMail: UITextField!
    
    
    
    @IBOutlet weak var SmartPrompts: UITextField!
    
    
    @IBOutlet weak var genius: UIButton!
    
    @IBOutlet weak var contentSpark: UILabel!
    
    
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    
    
    private var Echozoa:Bool = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if Echozoa == false && UserDefaults.standard.bool(forKey: "contentBackground") == false {
            self.present(SXPRNarrativeBot_Page.init(ifScrollBoottm: false), animated: true)
            Echozoa = true
        }
        
        genius.isSelected = (UserDefaults.standard.bool(forKey: "contentBackground") == true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentSpark.isUserInteractionEnabled = true
        contentSpark.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(presentVisualEnhancer)))
        contentSpark.text = "By continuing you agree to our <Terms of Service> and <Privacy Policy>."
        
        NarrativeBot()
        narrativeEngineCreate()
    }

    @objc func presentVisualEnhancer()  {
        
        self.present(SXPRNarrativeBot_Page.init(ifScrollBoottm: true), animated: true)
    }
    
    
    private func NarrativeBot() {
        PloggerMail.leftViewMode = .always
        PloggerMail.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 45, height: 30))
        
        
        SmartPrompts.leftViewMode = .always
        SmartPrompts.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 45, height: 30))
    }
   
    @IBAction func tailorStyleBegin(_ sender: UIButton) {
        guard (UserDefaults.standard.bool(forKey: "contentBackground") == true) else {
            self.showToast(message: "Please read and agree to our user privacy policy first!", type: .info)
            return
        }
        
        if Moodoralogon() == false {
           
            return
        }
        
        if MoodoraPaswerdlogon() == false {
           
            return
        }
        
        let datasayc: [String: Any] = [
            "narrativibe": DBNSeddingTrkop.shared.appQuicklyId,
            "visualude": PloggerMail.text!,
            "moodlith": SmartPrompts.text!
        ]
        microNarrative(parameters:datasayc)
        
        
        
    }
    
    
    func microNarrative(parameters:[String: Any])  {
        
        PloggerMail.resignFirstResponder()
        SmartPrompts.resignFirstResponder()

        activetyIndicator?.startAnimating()
        DBNSeddingTrkop.shared.makeRequest(path: "/oqqjkwhkdnengwz/datcoqbprmysayc",parameters:parameters,includeLoading:true,success: { respaonsed in
            guard let response = respaonsed as? Dictionary<String,Any> ,
                  let code = response["code"] as? Int,code == 200000,
                  let user = response["data"] as? Dictionary<String,Any>
                    
            else {
                self.showToast(message: "Data error", type:.error)
                
                return
            }
            loguserMofdal = DBHUs_er(dic: user)
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = SXPRMainbarPage.init()
            
         
            self.showToast(message: "Log in successful!", type: .success)
            self.activetyIndicator?.stopAnimating()
        },failure: { error in
            self.activetyIndicator?.stopAnimating()
            
            self.showToast(message: error.localizedDescription, type:.error)
            
        })

       
    }
    
    
    private func Moodoralogon()->Bool {
        if let contetnEmial = PloggerMail.text,contetnEmial.count > 0 {
            
            return true
        }
        self.showToast(message: "Please fill in your registered email first!", type: .info)
        return false
    }
    
    
    private func MoodoraPaswerdlogon()->Bool {
        if let contetnEmial = SmartPrompts.text,contetnEmial.count >= 6 {
            
            return true
        }
        self.showToast(message: "Please enter your password first (at least six characters)", type: .info)
        return false
    }
    
    @IBAction func LayoutGenius(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        UserDefaults.standard.set(sender.isSelected, forKey: "contentBackground")
    }
    
    
    
}
