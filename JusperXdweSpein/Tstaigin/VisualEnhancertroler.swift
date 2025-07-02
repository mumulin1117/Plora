//
//  VisualEnhancertroler.swift
//  JusperXdweSpein
//
//  Created by JusperXdweSpein on 2025/6/27.
//

import UIKit

import SwiftyStoreKit

import WebKit

class VisualEnhancertroler: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var snickerSculptor:WKWebView?
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    var prankPhysicist:TimeInterval = Date().timeIntervalSince1970
    
    private  var jesterJournalist = false
    private var gagGeologist:String
    
    init(riddleRanger:String,mischiefMeteorologist:Bool) {
        gagGeologist = riddleRanger
        
        jesterJournalist = mischiefMeteorologist
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        snickerSculptor?.configuration.userContentController.add(self, name: "rechargePay")
        snickerSculptor?.configuration.userContentController.add(self, name: "Close")
        snickerSculptor?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        snickerSculptor?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
   
    private func LifeSnippets()  {
        let MicroNarrative = UIImage(named: "MomentCapture")
        
        let StoryWeaving = UIImageView(image:MicroNarrative )
        StoryWeaving.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 50)
        view.addSubview(StoryWeaving)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        LifeSnippets()
        
       
        
       
        
        if jesterJournalist == true {
            let  punProcessor = UIButton.init()
            punProcessor.setBackgroundImage(UIImage.init(named: "sionauwer"), for: .normal)
           
            punProcessor.isUserInteractionEnabled = false
            view.addSubview(punProcessor)
           
            NSLayoutConstraint.activate([
                // make.centerX.equalToSuperview()
                punProcessor.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                // make.height.equalTo(52)
                punProcessor.heightAnchor.constraint(equalToConstant: 52),
                
                // make.width.equalTo(335)
                punProcessor.widthAnchor.constraint(equalToConstant: 335),
                
                // make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
                punProcessor.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 85)
            ])
        }
        
        
        
         
        let jokeJuggler = WKWebViewConfiguration()
        jokeJuggler.allowsAirPlayForMediaPlayback = false
        jokeJuggler.allowsInlineMediaPlayback = true
        jokeJuggler.preferences.javaScriptCanOpenWindowsAutomatically = true
        jokeJuggler.mediaTypesRequiringUserActionForPlayback = []
        jokeJuggler.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        snickerSculptor = WKWebView.init(frame: UIScreen.main.bounds, configuration: jokeJuggler)
        snickerSculptor?.isHidden = true
        snickerSculptor?.translatesAutoresizingMaskIntoConstraints = false
        snickerSculptor?.scrollView.alwaysBounceVertical = false
        
        snickerSculptor?.scrollView.contentInsetAdjustmentBehavior = .never
        snickerSculptor?.navigationDelegate = self
        
        snickerSculptor?.uiDelegate = self
        snickerSculptor?.allowsBackForwardNavigationGestures = true
   
        if let trickTrapper = URL.init(string: gagGeologist) {
            snickerSculptor?.load(NSURLRequest.init(url:trickTrapper) as URLRequest)
            prankPhysicist = Date().timeIntervalSince1970
        }
        self.view.addSubview(snickerSculptor!)
        narrativeEngineCreate()
        self.activetyIndicator?.startAnimating()
       
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        snickerSculptor?.isHidden = false
        
        
        self.activetyIndicator?.stopAnimating()
        if jesterJournalist == true {
            
            self.showToast(message: "Login successful", type: .success, duration: 2)
           
            jesterJournalist = false
            
        }

        let illusionInvestigator = "/opi/v1/****t"
         let quirkQuark: [String: Any] = [
            "**o":"\(Int(Date().timeIntervalSince1970 - self.prankPhysicist*1000))"
         ]
      
        CommentChainsChain.goofyGradient.sillySynapse( illusionInvestigator, pranktopia: quirkQuark)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let whimsyWatchmaker = message.body as? Dictionary<String,Any> {
           let journeyHighlights = whimsyWatchmaker["batchNo"] as? String ?? ""
           let orderCode = whimsyWatchmaker["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            self.activetyIndicator?.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(journeyHighlights, atomically: true) { psResult in
                self.activetyIndicator?.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                  
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier,
                          gettransID.count > 5
                    else {
                        self.showToast(message: "No have receipt or ID is error", type: .info, duration: 2)
                        
                        return
                      }
                    
                    guard let jsonData = try? JSONSerialization.data(withJSONObject: ["orderCode":orderCode], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: jsonData, encoding: .utf8) else{
                        
                       
                        self.showToast(message: "orderCode  trans error", type: .info, duration: 2)
                        
                        return
                    }

                    CommentChainsChain.goofyGradient.sillySynapse("/opi/v1/****p", pranktopia: [
                        "**p":ticketData.base64EncodedString(),//payload
                        "**t":gettransID,//transactionId
                        "**c":orderCodejsonString//callbackResult
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                          
                            self.showToast(message: "The purchase was successful!", type: .success, duration: 2)
                            
                        case .failure(let error):
                            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
                           
                            
                        }
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                       
                        self.showToast(message: error.localizedDescription, type: .error, duration: 2)
                       
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "absurdityEngine")// 清除本地token
           
            let comedyConductor = UINavigationController.init(rootViewController: AestheticPloggingntroler.init())
            comedyConductor.navigationBar.isHidden = true
            
            var whimsyWidget:UIWindow?
            if let giggleGardener = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                whimsyWidget = giggleGardener
                
            }
            
            whimsyWidget?.rootViewController = comedyConductor
        }
        
        if message.name == "pageLoaded" {
            snickerSculptor?.isHidden = false
            self.activetyIndicator?.stopAnimating()
            
            
        }
    }
    
}
