//
//  JPIDPAGJPIDViolationContrerle.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/28.
//

import UIKit


class JPIDPAGJPIDViolationContrerle: JPIDPAGSXPRIcyousg ,UICollectionViewDelegate, UICollectionViewDataSource {
    var onSelect: ((String) -> Void)?
       
    @IBOutlet weak var plogshow: UICollectionView!
   
    private var momentDataPlora:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    private let moods = [
        ("😊", "Happy"),
        ("😐", "Neutral"),
        ("😢", "Sad"),
        ("😡", "Angry"),
        ("🤩", "Excited")
    ]
   
    
    private var activetyIndicator:UIActivityIndicatorView?
    private let stack = UIStackView()
    
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    
    private let infoLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let content = UIView()
               
        narrativeEngineCreate()
       
        content.backgroundColor = .systemBackground
       
        
        FrameRewards()
    }
    private let closeBtn = UIButton(type: .system)
   
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return momentDataPlora.count
    }
    private var checkedInMood: String?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let plora = collectionView.dequeueReusableCell(withReuseIdentifier: "JPIDPAGJPIDCustomwerCell", for: indexPath) as! JPIDPAGJPIDCustomwerCell
        if let imglink = (momentDataPlora[indexPath.row]["visualCDN"] as? Array<String>)?.first,let lastimg = (momentDataPlora[indexPath.row]["visualCDN"] as? Array<String>)?.last,let uri = URL(string: imglink),let laseurl = URL(string: lastimg) {
            plora.monmentBiag.JPIDPAGlaodImage(JPIDPAGfrom: uri)
            
            plora.rightntBiagview.JPIDPAGlaodImage(JPIDPAGfrom: laseurl)
        }
        
       
        plora.esetilletlbel.text = (momentDataPlora[indexPath.row]["visualGrants"] as? String)
        
  
        return plora
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let itemid = momentDataPlora[indexPath.row]["aestheticAds"] as? Int else { return  }
        
        let linkader = JPIDPAGSXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph: "ppaqgjedsl/jAxraoymxaftshiebrdacprytDrectgahiwlbsh/fifnmdwelxw?bdiygnwazmvimciIhdy=") + "\(itemid)"
        reactionDensity(linkader:linkader)
        
    }
    private func reactionDensity(linkader:String)  {
    
      let  centr = linkader +  self.captionic(storymorph: "&ftaofkqexnk=") +  (JPIDPAGTrrendTides?["echozoa"] as? String ?? "") + self.captionic(storymorph: "&uadpwpbIwDk=") +  JPIDPAGSXPRequpour.shared.appQuicklyId
       
        self.navigationController?.pushViewController(JPIDPAGSXPRequcgsdnm.init(_moodGlyph: centr), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        PlogPremiumRefresh()
        
       
    }
    
  
   
    func FrameRewards()  {
        let colflowerOutlaout = UICollectionViewFlowLayout()
        plogshow.delegate = self
        colflowerOutlaout.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 218 + 8 + 46 + 8)
        plogshow.dataSource = self
       
        colflowerOutlaout.minimumLineSpacing = 10
        plogshow.register(JPIDPAGJPIDCustomwerCell.self, forCellWithReuseIdentifier: "JPIDPAGJPIDCustomwerCell")
        plogshow.showsHorizontalScrollIndicator = false
        infoLabel.text = checkedInMood == nil ? "How do you feel today?" : "Checked in: \(checkedInMood!)"
        colflowerOutlaout.minimumLineSpacing = 10
        infoLabel.textAlignment = .center
               
        infoLabel.font = .boldSystemFont(ofSize: 18)
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        colflowerOutlaout.scrollDirection = .vertical
        plogshow.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
        plogshow.collectionViewLayout = colflowerOutlaout
        if colflowerOutlaout.minimumLineSpacing < 3 {
            self.view.addSubview(infoLabel)
        }
        
    }
    
    //刷新数据
    private func PlogPremiumRefresh()  {
        activetyIndicator?.startAnimating()
        let parameterscentr: [String:Any] = [
            "nicheHubs": JPIDPAGSXPRequpour.shared.appQuicklyId,
            "visualTribes":5,
            "narrativeGuilds":10,
            "storyTides":1,
                "aestheticPods":1
            
        ]
        prepareHapticFeedback(parameterscentr: parameterscentr)
        
    }
  
    
    func prepareHapticFeedback(parameterscentr:[String:Any]) {
        var plogView = UIImageView()
        infoLabel.text = checkedInMood == nil ? "How do you feel today?" : "Checked in: \(checkedInMood!)"
        plogView.isUserInteractionEnabled = false
        infoLabel.textAlignment = .center
        
        
        
        plogView.tag = 44
        JPIDPAGSXPRequpour.shared.makeRequest(path: "/tjubeopnfgypltz/nmhewyhaj",parameters: parameterscentr,includeLoading:true) { [self] responses in
            self.infoLabel.font = .boldSystemFont(ofSize: 18)
            self.infoLabel.translatesAutoresizingMaskIntoConstraints = false
           
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
           
            self.plogshow.reloadData()
        }failure: { error in
            self.activetyIndicator?.stopAnimating()
            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
          
        }
        
        
  
       
       
    }
    
    
    
    @IBAction func applogerto(_ sender: UIButton) {
        
      
        let linda = JPIDPAGSXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"pdafgxeosm/mAkIkefxdpwemrbtq/cimnqdsejxy/u?")
        
        reactionDensity(linkader:linda)
    }
    
    
    
    @IBAction func snapskillplog(_ sender: UIButton) {
        let linda = JPIDPAGSXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"ppajgeexsq/yAqIweaxzppeerptx/lifnfdoexxj/u?")
        
        reactionDensity(linkader:linda)
    }
    
    @IBAction func pubilishplogillplog(_ sender: UIButton) {
        let linda = JPIDPAGSXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph:"pqamgdelsz/micstsnuael/livnndceoxo/l?")
        
        reactionDensity(linkader:linda)
    }
}
