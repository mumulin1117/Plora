//
//  SXPRequcgsdnm.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/25.
//
import WebKit
import UIKit
import SwiftyStoreKit
//web
var tagPOP:Int = 0
class SXPRequcgsdnm: UIViewController, WKScriptMessageHandler {
    
    
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 50, height: 50)
        activetyIndicator?.center = self.view.center
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "triggerVisualTopUp" {//充值
            guard let gestureZoom = message.body  as? String else {
                return
            }
            activetyIndicator?.startAnimating()
            self.view.isUserInteractionEnabled = false
            postSculptor(section:gestureZoom)
        }
        
        if message.name == "handlePlogCoinDepositSuccess" {
            self.showToast(message: "pay successful!", type: .success, duration: 2)
            return
        }
        
        if message.name == "openExternalNarrative" {
            if let measdbody =  message.body as? String{
                tagPOP += 1
                self.navigationController?.pushViewController(SXPRequcgsdnm.init(_moodGlyph:measdbody), animated: true)
            }
            return
        }
        if message.name == "collapseVisualBrowser" {
            if  tagPOP == 0{
                self.navigationController?.popToRootViewController(animated: true)
                return
            }
            tagPOP -= 1
            self.navigationController?.popViewController(animated: true)
            return
        }

        
        if message.name == "terminateCurrentNarrativeSession" {
            loguserMofdal = nil
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = SXPRStyleTailorPage.init()
            return
        }
        
       
    }
    
    private var pixelAlchemy:WKWebView?
    private var moodGlyph:String
    init(_moodGlyph: String) {
        self.moodGlyph = _moodGlyph
        super.init(nibName: nil, bundle: nil)
    }
   
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    private  func typographyKit() {
        self.activetyIndicator?.stopAnimating()
        
        self.view.isUserInteractionEnabled = true
    }
    private func postSculptor(section:String)  {
        SwiftyStoreKit.purchaseProduct(section, atomically: true) { psResult in
            self.typographyKit()
            if case .success(let psPurch) = psResult {
               
                let plogPrism = psPurch.transaction.downloads
                if !plogPrism.isEmpty {
                    SwiftyStoreKit.start(plogPrism)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
              
            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                    self.view.isUserInteractionEnabled = true
                    return
                }
                
                self.showToast(message: error.localizedDescription, type: .success, duration: 2)
               
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backiop = UIImageView(frame: UIScreen.main.bounds)
        backiop.contentMode = .scaleAspectFill
        backiop.image = UIImage.init(named: "Plogging")
        view.addSubview(backiop)
        
        
        captionSonnet()
        diaryKeeper()
        storyQuill()
        guard let recoringSureView = pixelAlchemy else { return }
        self.view.addSubview(recoringSureView)
        if  let url = URL(string: moodGlyph) {
            
            recoringSureView.load(URLRequest(url: url))
        }
        
        narrativeEngineCreate()
        activetyIndicator?.startAnimating()
    }
    
    private func beReplyContent()->WKUserContentController  {
        
        let handlers = [
               "triggerVisualTopUp", "handlePlogCoinDepositSuccess", "openExternalNarrative",
                "collapseVisualBrowser", "terminateCurrentNarrativeSession"
           
        ]
        
        let hapticStories = WKUserContentController()
        handlers.forEach { handler in
            hapticStories.add(self, name: handler)
        }
        
        return hapticStories
        
        
    }

    
    
    private func narrativeEngine()->WKWebViewConfiguration {
        let userGender = WKWebViewConfiguration()
      
        userGender.allowsInlineMediaPlayback = true
        userGender.mediaTypesRequiringUserActionForPlayback = []
     
     
        userGender.userContentController = beReplyContent()
        return userGender
    }
    
    func captionSonnet()  {
        pixelAlchemy = WKWebView(
               frame: UIScreen.main.bounds,
               configuration: narrativeEngine()
           )
       
            
       
        
        pixelAlchemy?.scrollView.contentInsetAdjustmentBehavior = .never
    }
    
    
    func diaryKeeper()  {
        pixelAlchemy?.navigationDelegate = self
        
        pixelAlchemy?.isHidden = true
    }
    
    func storyQuill()  {
        pixelAlchemy?.backgroundColor = .clear
        pixelAlchemy?.scrollView.bounces = false
        pixelAlchemy?.uiDelegate = self
       
        
    }
}


extension SXPRequcgsdnm:WKNavigationDelegate,WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: DispatchWorkItem(block: {
            self.pixelAlchemy?.isHidden = false
            self.activetyIndicator?.stopAnimating()
        }))
        
    }
    
}
