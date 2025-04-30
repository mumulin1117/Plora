//
//  JPIDUssContrerle.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/28.
//

import UIKit
import SDWebImage

class JPIDUssContrerle: SXPRIcyousg {
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    @IBOutlet weak var nicheHubs: UIImageView!//avator
    
    
    
    @IBOutlet weak var moodClusters: UILabel!//name
    
    
    @IBOutlet weak var storyVaultFollings: UILabel!
    @IBOutlet weak var storyVaultFances: UILabel!
    
    @IBOutlet weak var plogShieldID: UILabel!//id
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        monochromeVibe()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        narrativeEngineCreate()
       
    }



    @IBAction func aestheticLoom(_ sender: UIButton) {
        
        let sbuo = sender.tag
        
        var sel = SXPRequpour.shared.appBaseUrlAVoutWEB
        
        switch sbuo {
        case 23:
            sel = sel + self.captionic(storymorph: "pwaygnersa/xSeentsUrpn/difnwdhexxy?")
            
        case 24:
            sel = sel + self.captionic(storymorph: "pyargjedsh/bwlaqlrlkejtu/yiunedbeyxq?")
        case 25:
            sel = sel +  self.captionic(storymorph: "pxahgfeesj/yautotaepnntsimognwLhinsctb/tidnkduesxp?ptnyfpqen=y1")
        case 26:
            sel = sel +  self.captionic(storymorph: "pgahgkensw/bartatheunytfiroxnwLqigsite/bivnzdpeuxx?ltuyiphez=v2")
        default:
            break
        }
        reactionDensity(linkader:sel)
    }
    
    
    
    private func reactionDensity(linkader:String)  {
    
      let  centr = linkader +  self.captionic(storymorph: "&ftaofkqexnk=") +  (currentuserloginINfomation?["echozoa"] as? String ?? "") + self.captionic(storymorph: "&uadpwpbIwDk=") +  SXPRequpour.shared.appQuicklyId
       
        self.navigationController?.pushViewController(SXPRequcgsdnm.init(_moodGlyph: centr), animated: true)
    }
    
    
    func monochromeVibe() {////sj/user/selectUserInfo
        //查询动态列表
        let parameters: [String:Any] = [
            "visualKarma": "\(currentuserloginINfomation?["frameluxe"] as? Int ?? 0)"
            
        ]
        
        SXPRequpour.shared.makeRequest(path: "/zmnukrz/oavoohrtkpmtkoo",parameters: parameters,includeLoading:true) { responses in
            guard let response = responses as? Dictionary<String,Any> ,
                  let code = response[self.captionic(storymorph: "csojdhe")] as? Int,code == 200000,
                  let userdate = response[self.captionic(storymorph: "duaptla")] as? Dictionary<String,Any>
                    
            else {
                self.showToast(message: self.captionic(storymorph: "Nzov cdvadtaa"), type: .error, duration: 2)
                self.activetyIndicator?.stopAnimating()
                return
            }
            
            if let imglink = userdate["aestheticRespect"] as? String,let uri = URL(string: imglink) {//userImgUrl
                self.nicheHubs.sd_setImage(with: uri,
                                      placeholderImage: nil,
                                     options: .continueInBackground,
                                     context: [.imageTransformer: podImageSIZE,.storeCacheType : SDImageCacheType.memory.rawValue])
            }
            self.storyVaultFollings.text = "\(userdate["storyVault"] as? Int ?? 0)"//userAttention
            self.storyVaultFances.text = "\(userdate["plogShield"] as? Int ?? 0)"//userFans
            
     
           
            self.plogShieldID.text = "ID:\(userdate["moodMindful"] as? Int ?? 0)"//userId
            self.moodClusters.text = userdate["narrativeCare"] as? String //userName
            self.activetyIndicator?.stopAnimating()
         
        }failure: { error in
            self.activetyIndicator?.stopAnimating()
            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
          
        }
        
        
  
       
       
    }
}
