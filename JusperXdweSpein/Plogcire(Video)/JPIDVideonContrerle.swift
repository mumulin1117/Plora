//
//  JPIDVideonContrerle.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/28.
//

import UIKit
import SDWebImage

class JPIDVideonContrerle: SXPRIcyousg,UICollectionViewDelegate, UICollectionViewDataSource {
    private var momentDataPlora:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    @IBOutlet weak var momentMicroLicensesView: UICollectionView!
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        narrativeEngineCreate()
        
        
        FrameRewards()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        PlogPremiumRefresh()
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        return momentDataPlora.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let plora = collectionView.dequeueReusableCell(withReuseIdentifier: "JPIDViplogPeaceCell", for: indexPath) as! JPIDViplogPeaceCell
        if let imglink = (momentDataPlora[indexPath.row]["tagGraph"] as? String),let uri = URL(string: imglink) {
            plora.aiPlogger.sd_setImage(with: uri,
                                  placeholderImage: nil,
                                 options: .continueInBackground,
                                 context: [.imageTransformer: podImageSIZE,.storeCacheType : SDImageCacheType.memory.rawValue])
        }
        //userImgUrl
        if let imglink = momentDataPlora[indexPath.row]["frameRewards"] as? String,let uri = URL(string: imglink) {
            plora.nicheHubs.sd_setImage(with: uri,
                                  placeholderImage: nil,
                                 options: .continueInBackground,
                                 context: [.imageTransformer: podImageSIZE,.storeCacheType : SDImageCacheType.memory.rawValue])
        }
     
        plora.addAttention.tag = indexPath.row
        plora.addAttention.addTarget(self, action: #selector(touchUsercenterHjusper(uiopp:)), for: .touchUpInside)
        
        plora.poalert.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(aestheticRespect)))
        plora.visualTribes.text = (momentDataPlora[indexPath.row]["visualGrants"] as? String)//dynamicContent
        plora.attentionFloag.isHighlighted = ((momentDataPlora[indexPath.row]["plogAPI"] as? Int) == 1)//attentionFlag
        plora.moodClusters.text = (momentDataPlora[indexPath.row]["plogSponsors"]) as? String//userName
        plora.moonheartCount.text = "\(momentDataPlora[indexPath.row]["moodMarket"] as? Int ?? 0)" //moodMarket:praiseNum
        
        plora.moonCommentCount.text = "\(momentDataPlora[indexPath.row]["plogPremium"] as? Int ?? 0)"  //plogPremium:commentNum
        
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
       
        
        guard let itemid = momentDataPlora[indexPath.row]["aestheticAds"] as? Int else { return  }
        
        let linkader = DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/VideoDetails/index?dynamicId=\(itemid)"
        reactionDensity(linkader:linkader)
        
    }

   @objc func touchUsercenterHjusper(uiopp:UIButton)  {
       guard let userid = momentDataPlora[uiopp.tag]["narrativeNFTs"] as? String else { return  }//userId
        //用户个人中心
        let linkader = DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/HomePage/index?userId=\(userid)"
        reactionDensity(linkader:linkader)
    }
    
    private func reactionDensity(linkader:String)  {
    
      let  centr = linkader +  "&token=" +  (loguserMofdal?.echozoa ?? "") + "&appID=" +  DBNSeddingTrkop.shared.appQuicklyId
       
        self.navigationController?.pushViewController(SXPRequcgsdnm.init(_moodGlyph: centr), animated: true)
    }
    
    @objc func aestheticRespect()  {
    
        reactionDensity(linkader:DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/Report/index?")
     }
    
    
    @objc func toAttentioneticRespect(usedId:UIButton)  {
    
        reactionDensity(linkader:DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/Report/index")
     }
    
    
    func FrameRewards()  {
         
        momentMicroLicensesView.delegate = self
        momentMicroLicensesView.dataSource = self
        momentMicroLicensesView.register(UINib(nibName: "JPIDViplogPeaceCell", bundle: nil), forCellWithReuseIdentifier: "JPIDViplogPeaceCell")
        momentMicroLicensesView.showsHorizontalScrollIndicator = false
        
        let colflowerOutlaout = UICollectionViewFlowLayout()
        colflowerOutlaout.itemSize = UIScreen.main.bounds.size
        colflowerOutlaout.minimumLineSpacing = 0
        colflowerOutlaout.minimumLineSpacing = 0
        colflowerOutlaout.scrollDirection = .horizontal
        
        momentMicroLicensesView.collectionViewLayout = colflowerOutlaout
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
           
                return (dic["tagGraph"] as? String)  != nil //videoImgUrl
               
            })
            
            self.activetyIndicator?.stopAnimating()
           
            self.momentMicroLicensesView.reloadData()
        }failure: { error in
            self.activetyIndicator?.stopAnimating()
            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
          
        }
        
        
  
       
       
    }
}


