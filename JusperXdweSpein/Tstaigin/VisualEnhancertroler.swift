//
//  VisualEnhancertroler.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/6/27.
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
        snickerSculptor?.configuration.userContentController.add(self, name: "Pay")
        snickerSculptor?.configuration.userContentController.add(self, name: "Close")
        snickerSculptor?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        snickerSculptor?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let comedyNeuralNet = UIImageView.init(frame:UIScreen.main.bounds)
        comedyNeuralNet.contentMode = .scaleAspectFill
        comedyNeuralNet.image = UIImage(named: "joasoledy")
       
       
        view.addSubview(comedyNeuralNet)
        
       
        
        if jesterJournalist == true {
            let  punProcessor = UIButton.init()
            punProcessor.setBackgroundImage(UIImage.init(named: "hipopLaobg"), for: .normal)
           
            punProcessor.setTitle("Quick Log", for: .normal)
            punProcessor.setTitleColor(UIColor.white, for: .normal)
            punProcessor.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
           
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
        
        self.showingAlertingForSuccessfull(alsemessage: jesterJournalist == true ? "log in....." : "")
       
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
        
        
        SwiftMessages.hide(animated: true)
        if jesterJournalist == true {
            self.showingAlertingForSuccessfull(alsemessage: "Login successful")
           
            jesterJournalist = false
            
        }

        let illusionInvestigator = "/opi/v1/****t"
         let quirkQuark: [String: Any] = [
            "**o":"\(Int(Date().timeIntervalSince1970 - self.prankPhysicist*1000))"
         ]
      
        CommentChainsChain.goofyGradient.sillySynapse( illusionInvestigator, pranktopia: quirkQuark)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "Pay",
            let whimsyWatchmaker = message.body as? String {
         

            view.isUserInteractionEnabled = false
            self.laodingFlay(loadingText: "Paying...")

            
            SwiftyStoreKit.purchaseProduct(whimsyWatchmaker, atomically: true) { psResult in
                SwiftMessages.hide(animated: true)
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
                        
                        self.showingAlertingFor_Alert(alsemessage: "No have receipt or ID is error")
                        return
                      }
                    
                

                    CommentChainsChain.goofyGradient.sillySynapse("/opi/v1/****p", pranktopia: [
                        "**p":ticketData.base64EncodedString(),//payload
                        "**t":gettransID,//transactionId
                        "**c":["orderCode":whimsyWatchmaker]//callbackResult
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            self.showingAlertingForSuccessfull(alsemessage: "The purchase was successful!")
                            
                        case .failure(let error):
                        
                            self.showingAlertingFor_Alert(alsemessage: error.localizedDescription)
                        }
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                       
                        self.showingAlertingFor_Alert(alsemessage: error.localizedDescription)
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
            
            
            SwiftMessages.hide(animated: true)
        }
    }
    
}
