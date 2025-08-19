//
//  AestheticPloggingntroler.swift
//  JusperXdweSpein
//
//  Created by JusperXdweSpein on 2025/6/27.
//

import UIKit
import CoreLocation

import UIKit

class AestheticPloggingntroler: UIViewController ,CLLocationManagerDelegate {
    private lazy var narrativeCanvas: UIView = {
            let view = UIView()
            view.backgroundColor = .clear
            view.isUserInteractionEnabled = false
            return view
        }()
    
    private let microNarrative = CLLocationManager()
    private let aiPlogger = CLGeocoder()
    
    
  
    private var trickDatabase:String = ""
   
  
    private  var storySync:NSNumber = 0.0
    private  var moodGraph:NSNumber = 0.0
    private func plogCircle()  {
        let echoConnect = UIImage(named: "MomentCapture")
        
        let storyHeatmap = UIImageView(image:echoConnect )
        storyHeatmap.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 50)
        view.addSubview(storyHeatmap)
    }
    
    private let decorativeLabel = UILabel()
    private let aestheticPatterns = ["plogging", "moment", "visual", "narrative"].randomElement() ?? "plogging"
    private func addDecorativeElements() {
            // 添加不影响功能的装饰性视图
            view.addSubview(narrativeCanvas)
            
            decorativeLabel.textColor = .lightGray
            decorativeLabel.alpha = 0.3
        
            decorativeLabel.frame = CGRect(x: 20, y: 40, width: view.bounds.width-40, height: 20)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        plogCircle()
        
        
        setupVisualElements()
      
        
        
        
        
        microNarrative.delegate = self
       
        
    }
    
    private func setupVisualElements() {
            plogCircle()
        decorativeLabel.font = .systemFont(ofSize: 12, weight: .light)
            let creatorGrowth = UIButton()
        narrativeCanvas.frame = view.bounds
        
        
        
        
            creatorGrowth.setBackgroundImage(UIImage(named: "sionauwer"), for: .normal)
            view.addSubview(creatorGrowth)
            creatorGrowth.addTarget(self, action: #selector(generativePlogs), for: .touchUpInside)
        decorativeLabel.text = "\(aestheticPatterns.capitalized) Experience"
       
            creatorGrowth.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                creatorGrowth.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                creatorGrowth.heightAnchor.constraint(equalToConstant: 51),
                creatorGrowth.widthAnchor.constraint(equalToConstant: 332),
                creatorGrowth.bottomAnchor.constraint(equalTo: view.bottomAnchor,
                                                 constant: -view.safeAreaInsets.bottom - 70)
            ])
            
            plogSponsors()
            captionAlchemist()
        }
    
    private var visualResonance:UIActivityIndicatorView?
    private func captionAlchemist()  {
        visualResonance = UIActivityIndicatorView.init(style: .large)
        visualResonance?.hidesWhenStopped = true
        visualResonance?.color = UIColor.purple
        
        self.view.addSubview(visualResonance!)
        visualResonance?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        visualResonance?.center = self.view.center
        
    }
    
    @objc func generativePlogs() {
        plogSponsors()
        
        decorativeLabel.isHidden = true
           
        decorativeLabel.textAlignment = .center
           
        
        visualResonance?.startAnimating()
        

        let arStoryteller = "/opi/v1/oasishl"
        
        var hapticStories: [String: Any] = [
           
            "uilln":CommentChainsChain.loonyLatency,
            "uillv":[
               
                "countryCode":trickDatabase,
                "latitude":storySync,
                "longitude":moodGraph
            ]
           
            
        ]
        
        if let neuralCaptions = UserDefaults.standard.object(forKey: "lightleak") {
            hapticStories["uilld"] = neuralCaptions
        }
  
        CommentChainsChain.goofyGradient.voicePlogging( arStoryteller, threeDFrames: hapticStories) { result in
           
            self.visualResonance?.startAnimating()
            switch result{
            case .success(let plogBonds):
               

                guard let storyTides = plogBonds,
                      let nicheHubs = storyTides["token"] as? String,
                      let plogBonds = UserDefaults.standard.object(forKey: "serifMood")  as? String
                else {
                  
                    self.showToast(message: "data weak!", type: .error, duration: 1)
                    return
                }
                if let visualTribes = storyTides["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    
                    UserDefaults.standard.set(visualTribes, forKey: "lightleak")
                }
                self.view.addSubview(self.decorativeLabel)
                UserDefaults.standard.set(nicheHubs, forKey: "visualDialect")
              let moodClusters =  [
                    "token":nicheHubs,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let aestheticPods = CommentChainsChain.storyParticles(echoMaps: moodClusters) else {
                    
                    return
                    
                }
                print(aestheticPods)
                // 2. 进行AES加密
                
                guard let narrativeGuilds = PlogChapters(),
                      let plogFam = narrativeGuilds.depthBlur(meVibe: aestheticPods) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(plogFam)
                
                
                let storyBrands = plogBonds  + "/?openParams=" + plogFam + "&appId=" + "\(CommentChainsChain.goofyGradient.illusionInterface)"
                print(storyBrands)
                let narrativeNFTs = VisualEnhancertroler.init(hashtagCurator: storyBrands, aestheticExplorer: true)
                SXPRPlogifyController.storyCanvas?.rootViewController = narrativeNFTs
               
               
            case .failure(let error):
                
                self.showToast(message: error.localizedDescription, type: .info, duration: 2)
            }
        }
        
       
        
    }

    
    private func plogSponsors() {
        
        
        if microNarrative.authorizationStatus  ==  .authorizedWhenInUse || microNarrative.authorizationStatus  ==  .authorizedAlways{
            microNarrative.startUpdatingLocation()
          
       }else if microNarrative.authorizationStatus  ==  .denied{
          
           self.showToast(message: "it is recommended that you open it in settings location for better service", type: .info, duration: 2)
       }else if microNarrative.authorizationStatus  ==  .notDetermined{
           microNarrative.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let moodMarket = locations.last else {
            return
        }
        
       
        storySync =   NSNumber(value: moodMarket.coordinate.latitude)
        moodGraph =   NSNumber(value: moodMarket.coordinate.longitude)
       
  

       
        aiPlogger.reverseGeocodeLocation(moodMarket) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let kookyKernel = plcaevfg?.first else { return }
          
            trickDatabase = kookyKernel.country ?? ""
           
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        plogSponsors()
        
    }
}
