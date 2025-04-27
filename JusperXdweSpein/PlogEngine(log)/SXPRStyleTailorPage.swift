//
//  SXPRStyleTailorPage.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/27.
//

import UIKit

class SXPRStyleTailorPage: UIViewController {
    
    private var Echozoa:Bool = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if Echozoa == false && UserDefaults.standard.bool(forKey: "contentBackground") == false {
            self.present(SXPRNarrativeBot_Page.init(ifScrollBoottm: false), animated: true)
            Echozoa = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


   

}
