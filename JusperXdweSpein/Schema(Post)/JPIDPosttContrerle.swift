//
//  JPIDPosttContrerle.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/28.
//

import UIKit

class JPIDPosttContrerle: SXPRIcyousg {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func tjubeopnfgypltznmhewyhaj(_ sender: UIButton) {
        if sender.tag == 5 {
            self.dismiss(animated: true)
        }
        
        if sender.tag == 3 {
            let linkader = DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/postVideos/index?"
            reactionDensity(linkader:linkader)
        }
        if sender.tag == 4 {
            let linkader = DBNSeddingTrkop.shared.appBaseUrlAVoutWEB + "pages/issue/index?"
            reactionDensity(linkader:linkader)
        }
        
    }
    private func reactionDensity(linkader:String)  {
    
      let  centr = linkader +  "&token=" +  (loguserMofdal?.echozoa ?? "") + "&appID=" +  DBNSeddingTrkop.shared.appQuicklyId
       
        self.navigationController?.pushViewController(SXPRequcgsdnm.init(_moodGlyph: centr), animated: true)
    }
}
