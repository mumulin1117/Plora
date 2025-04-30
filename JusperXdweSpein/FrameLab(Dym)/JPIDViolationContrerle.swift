//
//  JPIDViolationContrerle.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/28.
//

import UIKit
import SDWebImage

class JPIDViolationContrerle: SXPRIcyousg ,UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var plogshow: UICollectionView!
   
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        narrativeEngineCreate()
       
        
        FrameRewards()
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return momentDataPlora.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let plora = collectionView.dequeueReusableCell(withReuseIdentifier: "JPIDCustomwerCell", for: indexPath) as! JPIDCustomwerCell
        if let imglink = (momentDataPlora[indexPath.row]["visualCDN"] as? Array<String>)?.first,let lastimg = (momentDataPlora[indexPath.row]["visualCDN"] as? Array<String>)?.last,let uri = URL(string: imglink),let laseurl = URL(string: lastimg) {
            plora.monmentBiag.sd_setImage(with: uri,
                                  placeholderImage: nil,
                                 options: .continueInBackground,
                                 context: [.imageTransformer: podImageSIZE,.storeCacheType : SDImageCacheType.memory.rawValue])
            
            plora.rightntBiagview.sd_setImage(with: laseurl,
                                  placeholderImage: nil,
                                 options: .continueInBackground,
                                 context: [.imageTransformer: podImageSIZE,.storeCacheType : SDImageCacheType.memory.rawValue])
        }
        
       
        plora.esetilletlbel.text = (momentDataPlora[indexPath.row]["visualGrants"] as? String)
        
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
        
        let linkader = SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph: "ppaqgjedsl/jAxraoymxaftshiebrdacprytDrectgahiwlbsh/fifnmdwelxw?bdiygnwazmvimciIhdy=") + "\(itemid)"
        reactionDensity(linkader:linkader)
        
    }
    private func reactionDensity(linkader:String)  {
    
      let  centr = linkader +  self.captionic(storymorph: "&ftaofkqexnk=") +  (currentuserloginINfomation?["echozoa"] as? String ?? "") + self.captionic(storymorph: "&uadpwpbIwDk=") +  SXPRequpour.shared.appQuicklyId
       
        self.navigationController?.pushViewController(SXPRequcgsdnm.init(_moodGlyph: centr), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        PlogPremiumRefresh()
        
       
    }
    
  
   
    func FrameRewards()  {
        plogshow.delegate = self
        plogshow.dataSource = self
        plogshow.register(JPIDCustomwerCell.self, forCellWithReuseIdentifier: "JPIDCustomwerCell")
        plogshow.showsHorizontalScrollIndicator = false
        
        let colflowerOutlaout = UICollectionViewFlowLayout()
        colflowerOutlaout.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 218 + 8 + 46 + 8)
        colflowerOutlaout.minimumLineSpacing = 10
        colflowerOutlaout.minimumLineSpacing = 10
        colflowerOutlaout.scrollDirection = .vertical
        plogshow.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
        plogshow.collectionViewLayout = colflowerOutlaout
    }
    
    //刷新数据
    private func PlogPremiumRefresh()  {
        activetyIndicator?.startAnimating()
        
        prepareHapticFeedback()
        
    }
  
    
    func prepareHapticFeedback() {
      
        let parameters: [String:Any] = [
            "nicheHubs": SXPRequpour.shared.appQuicklyId,
            "visualTribes":5,
            "narrativeGuilds":10,
            "storyTides":1,
                "aestheticPods":1
            
        ]
        
        SXPRequpour.shared.makeRequest(path: "/tjubeopnfgypltz/nmhewyhaj",parameters: parameters,includeLoading:true) { responses in
            guard let response = responses as? Dictionary<String,Any> ,
                  let code = response[self.captionic(storymorph: "csojdhe")] as? Int,code == 200000,
                  let dyms = response[self.captionic(storymorph: "duaptla")] as? Array<Dictionary<String,Any>>
                    
            else {
                self.activetyIndicator?.stopAnimating()
                self.showToast(message: self.captionic(storymorph: "Nzov cdvadtaa"), type: .error, duration: 2)
                return
            }
      
            
            self.momentDataPlora = dyms.filter({ dic in
           
                return (dic["tagGraph"] as? String)  == nil //videoImgUrl
               
            })
            
            self.activetyIndicator?.stopAnimating()
           
            self.plogshow.reloadData()
        }failure: { error in
            self.activetyIndicator?.stopAnimating()
            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
          
        }
        
        
  
       
       
    }
    
    
    
    @IBAction func applogerto(_ sender: UIButton) {
        
      
        var linda = SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"pdafgxeosm/mAkIkefxdpwemrbtq/cimnqdsejxy/u?")
        
        reactionDensity(linkader:linda)
    }
    
    
    
    @IBAction func snapskillplog(_ sender: UIButton) {
        var linda = SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"ppajgeexsq/yAqIweaxzppeerptx/lifnfdoexxj/u?")
        
        reactionDensity(linkader:linda)
    }
    
    @IBAction func pubilishplogillplog(_ sender: UIButton) {
        var linda = SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"pqamgdelsz/micstsnuael/livnndceoxo/l?")
        
        reactionDensity(linkader:linda)
    }
}
