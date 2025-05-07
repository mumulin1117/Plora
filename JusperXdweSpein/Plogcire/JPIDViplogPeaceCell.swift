//
//  JPIDViplogPeaceCell.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/29.
//

import UIKit

class JPIDViplogPeaceCell: UICollectionViewCell {

    @IBOutlet weak var attentionFloag: UIImageView!
    
    
    @IBOutlet weak var poalert: UIImageView!
    
    
    @IBOutlet weak var begiNcomnnet: UIImageView!
    
    
    @IBOutlet weak var moonheartCount: UILabel!
    @IBOutlet weak var moonCommentCount: UILabel!
    
    
    @IBOutlet weak var aiPlogger: UIImageView!//bg
    
    
    @IBOutlet weak var nicheHubs: UIImageView!//avator
    
    
    @IBOutlet weak var visualTribes: UILabel!//content
    
    
    @IBOutlet weak var moodClusters: UILabel!//name
    
    
    @IBOutlet weak var addAttention: UIButton!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        narrativeGlobe()
    }

    
    func narrativeGlobe()  {
        poalert.isUserInteractionEnabled = true
        nicheHubs.layer.masksToBounds = true
        nicheHubs.layer.cornerRadius = 26
        
        
    }
}
