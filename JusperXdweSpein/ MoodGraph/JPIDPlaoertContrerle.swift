//
//  JPIDPlaoertContrerle.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/28.
//

import UIKit
import SDWebImage

let podImageSIZE = SDImageResizingTransformer(
    size: CGSize(width: 450, height: 450),
    scaleMode: .aspectFill
)
class JPIDPlaoertContrerle: SXPRIcyousg, UICollectionViewDelegate, UICollectionViewDataSource {
    private var ploraUserData:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    private var momentDataPlora:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.topuserNarrativeNFTs {
            return ploraUserData.count
        }
        return momentDataPlora.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.topuserNarrativeNFTs {
            let plora = collectionView.dequeueReusableCell(withReuseIdentifier: "JPIDBlueUserCell", for: indexPath) as! JPIDBlueUserCell
            if let imglink = ploraUserData[indexPath.row]["microNarrative"] as? String,let uri = URL(string: imglink) {
                plora.usertBiag.sd_setImage(with: uri,
                                      placeholderImage: nil,
                                     options: .continueInBackground,
                                     context: [.imageTransformer: podImageSIZE,.storeCacheType : SDImageCacheType.memory.rawValue])
            }
           
            return plora
        }
        
        let plora = collectionView.dequeueReusableCell(withReuseIdentifier: "JPIDMomentCell", for: indexPath) as! JPIDMomentCell
        if let imglink = (momentDataPlora[indexPath.row]["visualCDN"] as? Array<String>)?.first,let uri = URL(string: imglink) {
            plora.monmentBiag.sd_setImage(with: uri,
                                  placeholderImage: nil,
                                 options: .continueInBackground,
                                 context: [.imageTransformer: podImageSIZE,.storeCacheType : SDImageCacheType.memory.rawValue])
        }
        
        plora.reorinttrAloi.addTarget(self, action: #selector(aestheticRespect), for: .touchUpInside)
        plora.esetilletlbel.text = (momentDataPlora[indexPath.row]["visualGrants"] as? String)
        plora.faveriteView.isHighlighted = ((momentDataPlora[indexPath.row]["plogAPI"] as? Int) == 1)
       
        return plora
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.topuserNarrativeNFTs {
            guard let userid = ploraUserData[indexPath.row]["visualDiary"] as? Int else { return  }
            //用户个人中心
            let linkader = SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"pyajgtelst/qHwozmgenPhaugrep/eidngdwedxf?tutsoebriIpdb=") + "\(userid)"
            reactionDensity(linkader:linkader)
            return
        }
        
       // aiIntentParser    storyEncrypt aiIntentParser narrativeNFTs aestheticAds
        guard let itemid = momentDataPlora[indexPath.row]["aestheticAds"] as? Int else { return  }
        
        let linkader = SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"pgahgmemsr/oDnyvncahmhiycgDuevtgaoiflosp/litnsdhedxd?odqyknkagmtidctIkdm=") + "\(itemid)"
        reactionDensity(linkader:linkader)
        
    }
    
    @IBOutlet weak var topuserNarrativeNFTs: UICollectionView!
    
    
    @IBOutlet weak var momentMicroLicensesView: UICollectionView!
    
    
    
    private func reactionDensity(linkader:String)  {
    
      let  centr = linkader +  self.captionic(storymorph: "&ftaofkqexnk=") +  (TrrendTides?["echozoa"] as? String ?? "") + self.captionic(storymorph: "&uadpwpbIwDk=") +  SXPRequpour.shared.appQuicklyId
       
        self.navigationController?.pushViewController(SXPRequcgsdnm.init(_moodGlyph: centr), animated: true)
    }
    
    @objc func aestheticRespect()  {
    
        reactionDensity(linkader:SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"ppangmeesc/rRzespjowrptt/yiyngdfesxc?"))
     }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        PlogPremiumRefresh()
        var plogView = UIImageView()
        
        let userparameters: [String:Any] = [
            "plogging": SXPRequpour.shared.appQuicklyId //bundleId
        ]
        plogView.isUserInteractionEnabled = false
        plogView.tag = 44
        SXPRequpour.shared.makeRequest(path: "/gazogmfndmeicz/pqrytzaoqihd",parameters: userparameters,includeLoading:true) { responses in
            
            guard plogView.isUserInteractionEnabled == false,
                  plogView.tag == 44,let backData = responses as? Dictionary<String,Any> ,
                  let okaBad = backData[self.captionic(storymorph: "csojdhe")] as? Int,okaBad == 200000,
                  let users = backData[self.captionic(storymorph: "duaptla")] as? Array<Dictionary<String,Any>>
                    
            else {
                self.view.addSubview(plogView)
                
                self.showToast(message: self.captionic(storymorph: "Nzov cdvadtaa"), type: .error, duration: 2)
                plogView.isHidden = true
                return
            }
      
            
            self.ploraUserData = users
            
            self.topuserNarrativeNFTs.reloadData()
        }failure: { error in
            
            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
          
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        narrativeEngineCreate()
        AestheticAds()
        
        FrameRewards()
        
       
       
        
    }
    func FrameRewards()  {
        topuserNarrativeNFTs.delegate = self
        topuserNarrativeNFTs.dataSource = self
        topuserNarrativeNFTs.register(JPIDBlueUserCell.self, forCellWithReuseIdentifier: "JPIDBlueUserCell")
        topuserNarrativeNFTs.showsHorizontalScrollIndicator = false
        
        let colflowerlaout = UICollectionViewFlowLayout()
        colflowerlaout.itemSize = CGSize.init(width: 56, height: 56)
        colflowerlaout.minimumLineSpacing = 28
        colflowerlaout.minimumLineSpacing = 28
        colflowerlaout.scrollDirection = .horizontal
        
        topuserNarrativeNFTs.collectionViewLayout = colflowerlaout
        
        
        
        
        
        momentMicroLicensesView.delegate = self
        momentMicroLicensesView.dataSource = self
        momentMicroLicensesView.register(JPIDMomentCell.self, forCellWithReuseIdentifier: "JPIDMomentCell")
        momentMicroLicensesView.showsHorizontalScrollIndicator = false
        
        let colflowerOutlaout = UICollectionViewFlowLayout()
        colflowerOutlaout.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 235)
        colflowerOutlaout.minimumLineSpacing = 10
        colflowerOutlaout.minimumLineSpacing = 10
        colflowerOutlaout.scrollDirection = .vertical
        momentMicroLicensesView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
        momentMicroLicensesView.collectionViewLayout = colflowerOutlaout
    }

    @IBOutlet weak var pushremoter: UIImageView!
    
    func AestheticAds()  {
        pushremoter.isUserInteractionEnabled = true
        pushremoter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(VisualGrants)))
    }
    
    
    //message
    @objc func VisualGrants() {
        reactionDensity(linkader:SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"pzavgjexsr/tibnjfiotramiavtoicojnv/hiwnpdgelxw?"))
        
        
    }
    
    @IBAction func changePopGrants(_ sender: UIButton) {
        MoodMarket()
        sender.isSelected = true
        if sender.tag == 45 {
            selectType = 1
        }
        if sender.tag == 46 {
            selectType = 3
        }
        if sender.tag == 47 {
            selectType = 2
        }
        
        PlogPremiumRefresh()
    }
    
    
  
    
    //刷新数据
    private func PlogPremiumRefresh()  {
        activetyIndicator?.startAnimating()
        let parameters: [String:Any] = [
            "nicheHubs": SXPRequpour.shared.appQuicklyId,
            "visualTribes":1,
            "narrativeGuilds":10,
            "storyTides":selectType,
                "aestheticPods":1
            
        ]
        prepareHapticFeedback(parameters: parameters)
        
    }
    
    private func MoodMarket()  {
        let addlbutin45 = self.view.viewWithTag(45) as? UIButton
        let addlbutin46 = self.view.viewWithTag(46) as? UIButton
        let addlbutin47 = self.view.viewWithTag(47) as? UIButton
        
        addlbutin45?.isSelected = false
        addlbutin46?.isSelected = false
        addlbutin47?.isSelected = false
        
    }
    
    
    private var selectType:Int = 1
    
    func prepareHapticFeedback(parameters:[String:Any]) {
        
       
        var plogView = UIImageView()
        plogView.isUserInteractionEnabled = false
        plogView.tag = 44
        SXPRequpour.shared.makeRequest(path: "/tjubeopnfgypltz/nmhewyhaj",parameters: parameters,includeLoading:true) { responses in
            guard plogView.isUserInteractionEnabled == false,
                  plogView.tag == 44,let backData = responses as? Dictionary<String,Any> ,
                  let okaBad = backData[self.captionic(storymorph: "csojdhe")] as? Int,okaBad == 200000,
                  let dyms = backData[self.captionic(storymorph: "duaptla")] as? Array<Dictionary<String,Any>>
                    
            else {
                self.view.addSubview(plogView)
                
                self.activetyIndicator?.stopAnimating()
                plogView.isHidden = true
                self.showToast(message: self.captionic(storymorph: "Nzov cdvadtaa"), type: .error, duration: 2)
                return
            }
      
            
            self.momentDataPlora = dyms.filter({ dic in
           
                return (dic["tagGraph"] as? String)  == nil
               
            })
            
            self.activetyIndicator?.stopAnimating()
           
            self.momentMicroLicensesView.reloadData()
        }failure: { error in
            self.activetyIndicator?.stopAnimating()
            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
          
        }
        
        
  
       
       
    }
    
   
}
