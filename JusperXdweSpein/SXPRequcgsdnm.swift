//
//  SXPRequcgsdnm.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/25.
//
import WebKit
import UIKit
import SwiftyStoreKit
enum NarrativeAction {
    case bookmark(String)
    
    case plogConnection(String)
}
class SXPRIcyousg: UIViewController {
    
}
enum PloraMediaType: Int, CaseIterable {
    case photo = 0
    case video
    case textOnly
}

var tagPOP:Int = 0
class SXPRequcgsdnm: UIViewController, WKScriptMessageHandler {
   
    private let mediaSelectionScrollView = UIScrollView()
    private var mediaPreviewStackView: UIStackView!
       
    private let captionTextView = UITextField()
    private let locationToggle = UISwitch()
    private let aiPromptButton = UIButton(type: .system)
    private let publishButton = UIButton(type: .roundedRect)
    
    private var selectedMedia: [PloraMediaType: [URL]] = [:]
      
       
    private var currentTemplate: PloraLayoutTemplate = .grid
    
    
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    
    private func configureHierarchy() {
        view.backgroundColor = .blue
        // 媒体选择容器
                
        mediaSelectionScrollView.showsHorizontalScrollIndicator = false
        mediaSelectionScrollView.translatesAutoresizingMaskIntoConstraints = false
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
            self.showToast(message:self.captionic(storymorph: "pvaqyz jskurchcpegsessfyuuly!") , type: .success, duration: 2)
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
            currentuserloginINfomation = nil
            
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
        let alert = UIAlertController(title:nil, message: nil, preferredStyle: .actionSheet)
       
        alert.addAction(UIAlertAction(title: "", style: .cancel))
        SwiftyStoreKit.purchaseProduct(section, atomically: true) { psResult in
            self.typographyKit()
            
            if case .success(let psPurch) = psResult {
                
          ["prompts",""].forEach { prompt in
              alert.addAction(UIAlertAction(title: prompt, style: .default))
          }
                let plogPrism = psPurch.transaction.downloads
                if !plogPrism.isEmpty {
                    SwiftyStoreKit.start(plogPrism)
                }
                alert.addAction(UIAlertAction(title: "cane", style: .cancel))
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
              
            }else if case .error(let error) = psResult {
                
          ["prompts",""].forEach { prompt in
              alert.addAction(UIAlertAction(title: prompt, style: .default))
          }
               
                if error.code == .paymentCancelled {
                    
                    return
                }
                alert.addAction(UIAlertAction(title: "deol", style: .cancel))
                self.showToast(message: error.localizedDescription, type: .success, duration: 2)
               
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mediaPreviewStackView = UIStackView()
              
        mediaPreviewStackView.axis = .horizontal
       
        let backiop = UIImageView(frame: UIScreen.main.bounds)
        mediaPreviewStackView.spacing = 8
        backiop.contentMode = .scaleAspectFill
        backiop.image = UIImage.init(named: "Plogging")
        view.addSubview(backiop)
        captionTextView.font = UIFont.systemFont(ofSize: 13)
        
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
       
        publishButton.setTitle("发布故事", for: .normal)
                
        publishButton.setTitleColor(.white, for: .normal)
                
       
        
        pixelAlchemy?.scrollView.contentInsetAdjustmentBehavior = .never
    }
    
    
    func diaryKeeper()  {
        pixelAlchemy?.navigationDelegate = self
        publishButton.backgroundColor = .white
        publishButton.layer.cornerRadius = 8
        pixelAlchemy?.isHidden = true
    }
    
    func storyQuill()  {
        pixelAlchemy?.backgroundColor = .clear
        pixelAlchemy?.scrollView.bounces = false
        pixelAlchemy?.uiDelegate = self
       
        
    }
    private struct AssociatedKeys {
        static var narrativeCache: UInt8 = 0
    }
}

struct NarrativeCardViewModel {
    let coverImageURL: URL
    let title: String
    let creatorName: String
    
    let narrativeId: String
    
    init?(narrative: String) {
        guard let url = URL(string: narrative) else { return nil }
        self.coverImageURL = url
        self.title = narrative
        self.creatorName = narrative
        
        self.narrativeId = narrative
    }
}
extension SXPRequcgsdnm:WKNavigationDelegate,WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.pixelAlchemy?.isHidden = false
            self.activetyIndicator?.stopAnimating()
        }))
        
    }
    
}
