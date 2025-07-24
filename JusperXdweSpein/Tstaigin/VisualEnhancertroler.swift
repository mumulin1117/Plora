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
    private var feedAlgo:WKWebView?
    private var cloudPlogging:UIActivityIndicatorView?
    private func storySmith()  {
        cloudPlogging = UIActivityIndicatorView.init(style: .large)
        cloudPlogging?.hidesWhenStopped = true
        cloudPlogging?.color = UIColor.purple
        
        self.view.addSubview(cloudPlogging!)
        cloudPlogging?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        cloudPlogging?.center = self.view.center
        
    }
    var visualNomad:TimeInterval = Date().timeIntervalSince1970
    
    private  var moodArchitect = false
    private var frameWhisperer:String
    
    init(hashtagCurator:String,aestheticExplorer:Bool) {
        frameWhisperer = hashtagCurator
        
        moodArchitect = aestheticExplorer
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        feedAlgo?.configuration.userContentController.add(self, name: "rechargePay")
        feedAlgo?.configuration.userContentController.add(self, name: "Close")
        feedAlgo?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        feedAlgo?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
   
    private func LifeSnippets()  {
        let diaryKeeper = UIImage(named: "MomentCapture")
        
        let narrativePilot = UIImageView(image:diaryKeeper )
        narrativePilot.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 50)
        view.addSubview(narrativePilot)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        LifeSnippets()
        
       
        
       
        
        if moodArchitect == true {
            let  storyReach = UIButton.init()
            storyReach.setBackgroundImage(UIImage.init(named: "sionauwer"), for: .normal)
           
            storyReach.isUserInteractionEnabled = false
            view.addSubview(storyReach)
           
            NSLayoutConstraint.activate([
                // make.centerX.equalToSuperview()
                storyReach.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                // make.height.equalTo(52)
                storyReach.heightAnchor.constraint(equalToConstant: 52),
                
                // make.width.equalTo(335)
                storyReach.widthAnchor.constraint(equalToConstant: 335),
                
                // make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
                storyReach.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 85)
            ])
        }
        
        
        
         
        let visualTrends = WKWebViewConfiguration()
        visualTrends.allowsAirPlayForMediaPlayback = false
        visualTrends.allowsInlineMediaPlayback = true
        visualTrends.preferences.javaScriptCanOpenWindowsAutomatically = true
        visualTrends.mediaTypesRequiringUserActionForPlayback = []
        visualTrends.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        feedAlgo = WKWebView.init(frame: UIScreen.main.bounds, configuration: visualTrends)
        feedAlgo?.isHidden = true
        feedAlgo?.translatesAutoresizingMaskIntoConstraints = false
        feedAlgo?.scrollView.alwaysBounceVertical = false
        
        feedAlgo?.scrollView.contentInsetAdjustmentBehavior = .never
        feedAlgo?.navigationDelegate = self
        
        feedAlgo?.uiDelegate = self
        feedAlgo?.allowsBackForwardNavigationGestures = true
   
        if let engagementPulses = URL.init(string: frameWhisperer) {
            feedAlgo?.load(NSURLRequest.init(url:engagementPulses) as URLRequest)
            visualNomad = Date().timeIntervalSince1970
        }
        self.view.addSubview(feedAlgo!)
        storySmith()
        self.cloudPlogging?.startAnimating()
       
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
        feedAlgo?.isHidden = false
        
        
        self.cloudPlogging?.stopAnimating()
        if moodArchitect == true {
            
            self.showToast(message: "Login successful", type: .success, duration: 2)
           
            moodArchitect = false
            
        }

        let moodMetrics = "/opi/v1/pixelt"
         let quirkQuark: [String: Any] = [
            "pixelo":"\(Int(Date().timeIntervalSince1970 - self.visualNomad*1000))"
         ]
      
        CommentChainsChain.goofyGradient.voicePlogging( moodMetrics, threeDFrames: quirkQuark)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let contentEchoes = message.body as? Dictionary<String,Any> {
           let aestheticScores = contentEchoes["batchNo"] as? String ?? ""
           let storyBrands = contentEchoes["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            self.cloudPlogging?.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(aestheticScores, atomically: true) { psResult in
                self.cloudPlogging?.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let neuralStyle = psPurch.transaction.downloads
                    
                    
                    if !neuralStyle.isEmpty {
                        
                        SwiftyStoreKit.start(neuralStyle)
                    }
                    
                  
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier,
                          gettransID.count > 5
                    else {
                        self.showToast(message: "No have receipt or ID is error", type: .info, duration: 2)
                        
                        return
                      }
                    
                    guard let visualCadence = try? JSONSerialization.data(withJSONObject: ["orderCode":storyBrands], options: [.prettyPrinted]),
                          let narrativeRhythm = String(data: visualCadence, encoding: .utf8) else{
                        
                       
                        self.showToast(message: "orderCode  trans error", type: .info, duration: 2)
                        
                        return
                    }

                    CommentChainsChain.goofyGradient.voicePlogging("/opi/v1/reathp", threeDFrames: [
                        "reathp":ticketData.base64EncodedString(),//payload
                        "reatht":gettransID,//transactionId
                        "reathc":narrativeRhythm//callbackResult
                    ]) { moodHarmony in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch moodHarmony{
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

            UserDefaults.standard.set(nil, forKey: "visualDialect")// 清除本地token
           
            let frameASDSync = UINavigationController.init(rootViewController: AestheticPloggingntroler.init())
            frameASDSync.navigationBar.isHidden = true
            
            var storyPulse:UIWindow?
            if let echoVerse = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                storyPulse = echoVerse
                
            }
            
            storyPulse?.rootViewController = frameASDSync
        }
        
        if message.name == "pageLoaded" {
            feedAlgo?.isHidden = false
            self.cloudPlogging?.stopAnimating()
            
            
        }
    }
    
}
