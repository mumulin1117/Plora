//
//  JPIDPAGSXPRequcgsdnm.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/25.
//
import WebKit
import UIKit



enum JPIDPAGNarrativeAction {
    case bookmark(String)
    
    case plogConnection(String)
}
class JPIDPAGSXPRIcyousg: UIViewController {
    
}
enum JPIDPAGPloraMediaType: Int, CaseIterable {
    case photo = 0
    case video
    case textOnly
}

var tagPOP:Int = 0


fileprivate let ploraMoods: [(emoji: String, label: String)] = [
    ("😊", "Happy"), ("😌", "Calm"), ("🤔", "Thoughtful"),
    ("😎", "Inspired"), ("🥰", "Grateful"), ("😴", "Tired")
]


class JPIDPAGMoodBarView: UIView {
    private var JPIDPAGbuttons: [UIButton] = []
    var onMoodSelected: ((Int) -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.systemGray5
        layer.cornerRadius = 10
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 12
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stack)
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12)
        ])
        for (idx, mood) in ploraMoods.enumerated() {
            let btn = UIButton(type: .system)
            btn.setTitle(mood.emoji, for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 28)
            btn.tag = idx
            btn.addTarget(self, action: #selector(moodTapped(_:)), for: .touchUpInside)
            stack.addArrangedSubview(btn)
            JPIDPAGbuttons.append(btn)
        }
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    @objc private func moodTapped(_ sender: UIButton) { onMoodSelected?(sender.tag) }
    func highlightMood(_ idx: Int) {
        for (i, btn) in JPIDPAGbuttons.enumerated() {
            btn.alpha = (i == idx) ? 1.0 : 0.5
        }
    }
}
class JPIDPAGSXPRequcgsdnm: UIViewController, WKScriptMessageHandler {
   
    private let mediaSelectionScrollView = UIScrollView()
    private var mediaPreviewStackView: UIStackView!
       
    private let captionTextView = UITextField()
    private let locationToggle = UISwitch()
    private let aiPromptButton = UIButton(type: .system)
    private let publishButton = UIButton(type: .roundedRect)
    private var moodBar: JPIDPAGMoodBarView?
    private var moodLabel: UILabel?
    private var selectedMedia: [JPIDPAGPloraMediaType: [URL]] = [:]
      
       
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
        if view.backgroundColor == .cyan {
            setupMoodTracker()
        }
        mediaSelectionScrollView.showsHorizontalScrollIndicator = false
        mediaSelectionScrollView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupMoodTracker() {
        let moodKey = "ploraMood-\(String(describing: self.title ?? ""))"
        let savedMood = UserDefaults.standard.integer(forKey: moodKey)
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        label.text = "Current Mood: \(ploraMoods[savedMood].emoji) \(ploraMoods[savedMood].label)"
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        self.moodLabel = label

        let bar = JPIDPAGMoodBarView(frame: CGRect(x: 0, y: 0, width: view.bounds.width - 40, height: 56))
        bar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bar)
        NSLayoutConstraint.activate([
            bar.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 12),
            bar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bar.widthAnchor.constraint(equalToConstant: view.bounds.width - 40),
            bar.heightAnchor.constraint(equalToConstant: 56)
        ])
        bar.highlightMood(savedMood)
        bar.onMoodSelected = { [weak self] idx in
            UserDefaults.standard.set(idx, forKey: moodKey)
            self?.moodLabel?.text = "Current Mood: \(ploraMoods[idx].emoji) \(ploraMoods[idx].label)"
            bar.highlightMood(idx)
        }
        self.moodBar = bar
    }

    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "triggerVisualTopUp" {
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
                self.navigationController?.pushViewController(JPIDPAGSXPRequcgsdnm.init(_moodGlyph:measdbody), animated: true)
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
            JPIDPAGTrrendTides = nil
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = JPIDPAGSXPRStyleTailorPage.init()
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
       
        alert.addAction(UIAlertAction(title: "to pay", style: .cancel))
        JPIDPAGManner.shared.JPIDPAGbeginProducti(section, JPIDPAGcompl: { faiiod in
            switch faiiod {
            case .success(_):
                self.pixelAlchemy?.evaluateJavaScript("handlePlogCoinDepositSuccess()", completionHandler: nil)
                
                self.showToast(message: "Pay successful!", type: .success, duration: 2)
               
                ["prompts","cancer"].forEach { prompt in
                    alert.addAction(UIAlertAction(title: prompt, style: .default))
                }
            case .failure(let faidl):
                ["prompts","cancer"].forEach { prompt in
                    alert.addAction(UIAlertAction(title: prompt, style: .default))
                }
                self.showToast(message: faidl.localizedDescription, type: .info, duration: 2)
            default:
                break
            }
        })
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
extension JPIDPAGSXPRequcgsdnm:WKNavigationDelegate,WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.pixelAlchemy?.isHidden = false
            self.activetyIndicator?.stopAnimating()
        }))
        
    }
    
}
