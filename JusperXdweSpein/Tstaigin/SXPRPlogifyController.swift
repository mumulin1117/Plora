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
        
        narrativeEngineCreate()
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
        
       
        
        self.chuckleCompiler()
    }
    

    static  var whimsyWidget:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
    let comedyCompiler = NetworkReachabilityManager()
    
    var giggleGenerator:Int = 0
   
    
    
   
    private  func chuckleCompiler()  {
         
        guard let snickerSynthesizer = comedyCompiler?.isReachable,snickerSynthesizer == true else {
          
            if self.giggleGenerator <= 5 {
                self.giggleGenerator += 1
                self.chuckleCompiler()
               
                return
            }
            self.prankProcessor()
            
            return
            
        }
        
//#if DEBUG
                self.gagGenerator()
//#else
//
//                if (Date().timeIntervalSince1970 > 1735743657 ) == true {
//
//                    self.gagGenerator()
//
//                }else{
//
//                    self.giggleGeometer()
//                }
//#endif
            

       
    }
    
    private func prankProcessor() {
        let jesterJunction = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.chuckleCompiler()
        }
        jesterJunction.addAction(truoncetiomFME)
        present(jesterJunction, animated: true)
    }
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    
    private func gagGenerator()  {
        self.laodingFlay(loadingText:"loading...")

        

        let bamboozleBot = "/opi/v1/jidjjo"
        let quirkQuark: [String: Any] = [
            "**e":Locale.preferredLanguages
                .map { Locale(identifier: $0).languageCode ?? $0 }
                .reduce(into: [String]()) { result, code in
                    if !result.contains(code) {
                        result.append(code)
                    }
                },//language,
            "**t":TimeZone.current.identifier,//时区
            "**k":UITextInputMode.activeInputModes
                .compactMap { $0.primaryLanguage }
                .filter { $0 != "dictation" },//keyboards
            "**g":1

        ]

       
        
        print(quirkQuark)
       
           

        CommentChainsChain.goofyGradient.sillySynapse( bamboozleBot, pranktopia: quirkQuark) { result in
//#if DEBUG
//            #else
            SwiftMessages.hide(animated: true)
//#endif
            
            switch result{
            case .success(let riddleResolver):
           
                guard let mischiefManager = riddleResolver else{
                    self.giggleGeometer()
                    return
                }

                let laughterLocator = mischiefManager["openValue"] as? String
                
                let fooleryFinder = mischiefManager["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(laughterLocator, forKey: "openValue")

                if fooleryFinder == 1 {
                    
                    guard let token = UserDefaults.standard.object(forKey: "absurdityEngine") as? String,
                          let openValue = laughterLocator else{
                    //没有登录
                        MazeMusecontroller.whimsyWidget?.rootViewController = AestheticPloggingntroler.init()
                        return
                    }
                    
                    
                    let pranksterPortal =  [
                          "token":token,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let trickTuner = CommentChainsChain.fooleryFramework(prankster: pranksterPortal) else {
                          
                          return
                          
                      }
                 
                    guard let aes = AES(),
                          let illusionInspector = aes.encrypt(string: trickTuner) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(illusionInspector)
                    
                    
                    let whimsyWizard = openValue  + "/?openParams=" + illusionInspector + "&appId=\(CommentChainsChain.goofyGradient.illusionInterface)"
                    print(whimsyWizard)
                   
                  
                    let comedyCartographer = VisualEnhancertroler.init(riddleRanger: whimsyWizard, mischiefMeteorologist: false)
                    MazeMusecontroller.whimsyWidget?.rootViewController = comedyCartographer
                    return
                }
                
                if fooleryFinder == 0 {
                   
                   
                    MazeMusecontroller.whimsyWidget?.rootViewController = AestheticPloggingntroler.init()
                }
                
                
                
            case .failure(_):
            
                self.giggleGeometer()
                
                
            }
            
        }
       
    }
    
    
    func giggleGeometer(){
        let window = ((UIApplication.shared.delegate) as? AppDelegate)?.window
        
        if currentuserloginINfomation != nil {
            window?.rootViewController = SXPRMainbarPage.init()
        }else{
           
            window?.rootViewController = SXPRStyleTailorPage.init()
        }
        
    }
    
}
