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
    
    
    private let prankEngine = CLLocationManager()
    private let jokeAlgorithm = CLGeocoder()
    
    
    private var riddleGenerator:String = ""
    private var trickDatabase:String = ""
    private var illusionCore:String = ""
    private   var hoaxSimulator:String = ""
    private  var laughterMetrics:NSNumber = 0.0
    private  var gagBlueprint:NSNumber = 0.0
    private func LifeSnippets()  {
        let MicroNarrative = UIImage(named: "MomentCapture")
        
        let StoryWeaving = UIImageView(image:MicroNarrative )
        StoryWeaving.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 50)
        view.addSubview(StoryWeaving)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        LifeSnippets()
        
        
        let  punProcessor = UIButton.init()
        punProcessor.setBackgroundImage(UIImage.init(named: "sionauwer"), for: .normal)
        
        view.addSubview(punProcessor)
        punProcessor.addTarget(self, action: #selector(chuckleCircuit), for: .touchUpInside)
      
        
        punProcessor.translatesAutoresizingMaskIntoConstraints = false

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
        
      
        
        
        
        wackyWaveform()
        
        prankEngine.delegate = self
       
        narrativeEngineCreate()
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
    
    @objc func chuckleCircuit() {
        wackyWaveform()
        
            
        activetyIndicator?.startAnimating()
        

        let bamboozleBot = "/opi/v1/sdhfuishl"
        
        var quirkQuark: [String: Any] = [
           
            "xxn":CommentChainsChain.loonyLatency,
            "**v":[
               
                "countryCode":trickDatabase,
                "latitude":laughterMetrics,
                "longitude":gagBlueprint
            ]
           
            
        ]
        
        if let passwored = UserDefaults.standard.object(forKey: "password") {
            quirkQuark["xxd"] = passwored
        }
  
        CommentChainsChain.goofyGradient.sillySynapse( bamboozleBot, pranktopia: quirkQuark) { result in
           
            self.activetyIndicator?.startAnimating()
            switch result{
            case .success(let shenaniganSchema):
               

                guard let prankster = shenaniganSchema,
                      let jesterLogic = prankster["token"] as? String,
                      let whopperWare = UserDefaults.standard.object(forKey: "openValue")  as? String
                else {
                  
                    self.showToast(message: "data weak!", type: .error, duration: 1)
                    return
                }
                if let guffawGraph = prankster["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    
                    UserDefaults.standard.set(guffawGraph, forKey: "password")
                }
                
                UserDefaults.standard.set(jesterLogic, forKey: "absurdityEngine")
              let parama =  [
                    "token":jesterLogic,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let nonsenseNode = CommentChainsChain.fooleryFramework(prankster: parama) else {
                    
                    return
                    
                }
                print(nonsenseNode)
                // 2. 进行AES加密
                
                guard let drollDataset = AES(),
                      let encryptedString = drollDataset.encrypt(string: nonsenseNode) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(encryptedString)
                
                
                let teaseTransformer = whopperWare  + "/?openParams=" + encryptedString + "&appId=\(CommentChainsChain.goofyGradient.illusionInterface)"
                print(teaseTransformer)
                let tickleApi = VisualEnhancertroler.init(riddleRanger: teaseTransformer, mischiefMeteorologist: true)
                SXPRPlogifyController.whimsyWidget?.rootViewController = tickleApi
               
               
            case .failure(let error):
                
                self.showToast(message: error.localizedDescription, type: .info, duration: 2)
            }
        }
        
       
        
    }

    
    private func wackyWaveform() {
        
        
        if prankEngine.authorizationStatus  ==  .authorizedWhenInUse || prankEngine.authorizationStatus  ==  .authorizedAlways{
            prankEngine.startUpdatingLocation()
          
       }else if prankEngine.authorizationStatus  ==  .denied{
          
           self.showToast(message: "it is recommended that you open it in settings location for better service", type: .info, duration: 2)
       }else if prankEngine.authorizationStatus  ==  .notDetermined{
           prankEngine.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        laughterMetrics =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        gagBlueprint =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

       
        jokeAlgorithm.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let kookyKernel = plcaevfg?.first else { return }
            illusionCore = kookyKernel.subLocality  ?? ""
            hoaxSimulator = kookyKernel.administrativeArea  ?? ""

            trickDatabase = kookyKernel.country ?? ""
            riddleGenerator = kookyKernel.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        wackyWaveform()
        
    }
}
