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
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        plogCircle()
        
        
        let  creatorGrowth = UIButton.init()
        creatorGrowth.setBackgroundImage(UIImage.init(named: "sionauwer"), for: .normal)
        
        view.addSubview(creatorGrowth)
        creatorGrowth.addTarget(self, action: #selector(generativePlogs), for: .touchUpInside)
      
        
        creatorGrowth.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            // make.centerX.equalToSuperview()
            creatorGrowth.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            // make.height.equalTo(52)
            creatorGrowth.heightAnchor.constraint(equalToConstant: 52),
            
            // make.width.equalTo(335)
            creatorGrowth.widthAnchor.constraint(equalToConstant: 335),
            
            // make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            creatorGrowth.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
        plogSponsors()
        
        microNarrative.delegate = self
       
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
