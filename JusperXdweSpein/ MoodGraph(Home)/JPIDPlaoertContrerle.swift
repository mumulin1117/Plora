//
//  JPIDPlaoertContrerle.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/28.
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
        activetyIndicator = UIActivityIndicatorView.init(style: .medium)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 50, height: 50)
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
        
        //
        //moodMarket:praiseNum
        // captionNLP:dynamicClassify
        // creatorCoins:dynamicTitle
        //visualCDN:dynamicImgList
        //narrativeNFTs:userId
        //frameRewards:userImgUrl
      
        //plogAPI:attentionFlag
        //tagGraph:videoImgUrl
        //aestheticAds: dynamicId
        //visualGrants: dynamicContent
        return plora
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.topuserNarrativeNFTs {
            guard let userid = ploraUserData[indexPath.row]["visualDiary"] as? Int else { return  }
            //用户个人中心
            let linkader = DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/HomePage/index?userId=\(userid)"
            reactionDensity(linkader:linkader)
        }
        
        
        guard let itemid = momentDataPlora[indexPath.row]["aestheticAds"] as? Int else { return  }
        
        let linkader = DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/DynamicDetails/index?dynamicId=\(itemid)"
        reactionDensity(linkader:linkader)
        
    }
    
    @IBOutlet weak var topuserNarrativeNFTs: UICollectionView!
    
    
    @IBOutlet weak var momentMicroLicensesView: UICollectionView!
    
    
    
    private func reactionDensity(linkader:String)  {
      
        //用户个人中心
//        var centr = DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/HomePage/index?userId=\(userid)"
        
      let  centr = linkader +  "&token=" +  (loguserMofdal?.echozoa ?? "") + "&appID=" +  DBNSeddingTrkop.shared.appQuicklyId
       
        self.navigationController?.pushViewController(SXPRequcgsdnm.init(_moodGlyph: centr), animated: true)
    }
    
    @objc func aestheticRespect()  {
    
        reactionDensity(linkader:DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/Report/index")
     }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        PlogPremiumRefresh()
        
        fetchuserplolog()
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
        
        monochromeVibe()
        
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
    
    func monochromeVibe() {///sj/user/selectUserIndexList
        //查询动态列表
        let parameters: [String:Any] = [
            "nicheHubs": DBNSeddingTrkop.shared.appQuicklyId,
            "visualTribes":1,//dynamicType 动态类型1正常2其他等等
            "narrativeGuilds":10,//size
            "storyTides":selectType, //selectType 查询类型1热门2我的3关注的
                "aestheticPods":1//current
            
        ]
        
        DBNSeddingTrkop.shared.makeRequest(path: "/tjubeopnfgypltz/nmhewyhaj",parameters: parameters,includeLoading:true) { responses in
            guard let response = responses as? Dictionary<String,Any> ,
                  let code = response["code"] as? Int,code == 200000,
                  let dyms = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                self.showToast(message: "No data", type: .error, duration: 2)
                return
            }
      
            
            self.momentDataPlora = dyms.filter({ dic in
           
                return (dic["tagGraph"] as? String)  == nil //videoImgUrl
               
            })
            
            self.activetyIndicator?.stopAnimating()
           
            self.momentMicroLicensesView.reloadData()
        }failure: { error in
            self.activetyIndicator?.stopAnimating()
            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
          
        }
        
        
  
       
       
    }
    
    func fetchuserplolog() {///sj/user/selectUserIndexList
        //查询用户列表
        let userparameters: [String:Any] = [
            "plogging": DBNSeddingTrkop.shared.appQuicklyId //bundleId
        ]
        
        DBNSeddingTrkop.shared.makeRequest(path: "/gazogmfndmeicz/pqrytzaoqihd",parameters: userparameters,includeLoading:true) { responses in
            
            guard let response = responses as? Dictionary<String,Any> ,
                  let code = response["code"] as? Int,code == 200000,
                  let users = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                self.showToast(message: "No data", type: .error, duration: 2)
                return
            }
      
            
            self.ploraUserData = users
            
            self.topuserNarrativeNFTs.reloadData()
        }failure: { error in
            
            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
          
        }
    }
}
