//
//  JPIDPAGSXPRMainbarPage.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/27.
//

import UIKit
import WebKit




class JPIDPAGSXPRMainbarPage: UITabBarController{
    var onSelectJPIDPAG: ((String) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor =  UIColor(red: 0.14, green: 0.1, blue: 0.23, alpha: 1)
        setupJPIDPAGViewControllers()
        setupMiddleButton()
        
        setupMoodCheckinButton()
    }
    private let moods = [
            ("😊", "Happy"),
            ("😐", "Neutral"),
            ("😢", "Sad"),
            ("😡", "Angry"),
            ("🤩", "Excited")
        ]
    private func setupJPIDPAGViewControllers() {
        
        // 1. Home
        let  MoodGraphroot = JPIDPAGHomeController()
        let  MoodGraphNav = JPIDPAGSXPRMoodVRGuideController(rootViewController:  MoodGraphroot)
         MoodGraphNav.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(named: "JPIDPAGhouse_XSPR")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "JPIDPAGJPIDPAGhouse_XSPR_Fill")?.withRenderingMode(.alwaysOriginal)
        )
        
        // 2. DYM
        let FrameLabroot = JPIDPAGJPIDViolationContrerle()
        let FrameLabNav = JPIDPAGSXPRMoodVRGuideController(rootViewController: FrameLabroot)
        FrameLabroot.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(named: "JPIDPAGsqure_XSPR")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "JPIDPAGsqure_XSPR_fill")?.withRenderingMode(.alwaysOriginal)
        )
        
        // 3. Center Placeholder (will be replaced by custom button)
        let centerVC = UIViewController()
        centerVC.tabBarItem = UITabBarItem(
            title: nil,
            image: nil,
            tag: 2
        )
    
        let PlogcireVC = JPIDVideonContrerle()
        let PlogcireNav = JPIDPAGSXPRMoodVRGuideController(rootViewController: PlogcireVC)
        PlogcireNav.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(named: "JPIDPAGvideo_XSPR")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "JPIDPAGvideo_XSPR_Fill")?.withRenderingMode(.alwaysOriginal)
        )
        
       
     
        
        // 5. Profile
        let PlogVaultfileVC = JPIDUssContrerle()
        let PlogVaultleNav = JPIDPAGSXPRMoodVRGuideController(rootViewController: PlogVaultfileVC)
        PlogVaultleNav.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(named: "JPIDPAGPperson_XSPR")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "JPIDPAGPperson_XSPR_Fill")?.withRenderingMode(.alwaysOriginal)
        )
        
        viewControllers = [ MoodGraphNav, FrameLabNav, centerVC,PlogcireNav , PlogVaultleNav]
        
    }
    
    
    
    private func setupMiddleButton() {
        let middleButton = configureNarrativeSafety()
   
        middleButton.addTarget(self, action: #selector(middleButtonAction), for: .touchUpInside)
        
        
        middleButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        tabBar.addSubview(middleButton)
        tabBar.bringSubviewToFront(middleButton)
        
    }
        
        
    @objc private func middleButtonAction() {
        let publishVC = JPIDPosttContrerle()
        let nav = JPIDPAGSXPRMoodVRGuideController(rootViewController: publishVC)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
    }
    private var moodCheckinButton: UIButton?
   
}


extension JPIDPAGSXPRMainbarPage: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        guard let index = tabBar.items?.firstIndex(of: item) else { return }
        
        if index == 2 {
            tabBar.selectedItem = nil
            return
        }
    }
}

extension WKWebViewConfiguration {
   func disableAirPlay() -> Self {
       allowsAirPlayForMediaPlayback = false
       return self
   }
   
   func enableInlineMediaPlayback() -> Self {
       allowsInlineMediaPlayback = true
       return self
   }
   
   func enableAutoJavaScriptWindows() -> Self {
       preferences.javaScriptCanOpenWindowsAutomatically = true
       return self
   }
   
   func disableMediaUserAction() -> Self {
       mediaTypesRequiringUserActionForPlayback = []
       return self
   }
}
extension JPIDPAGSXPRMainbarPage{
    private func setupMoodCheckinButton() {
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: view.bounds.width - 70, y: view.bounds.height - 180, width: 56, height: 56)
       
        btn.layer.shadowOffset = CGSize(width: 0, height: 2)
        btn.setTitle("📝", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 28)
        
        btn.backgroundColor = UIColor(red: 0.98, green: 0.82, blue: 0.22, alpha: 1)
        btn.layer.cornerRadius = 28
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOpacity = 0.15
        moodCheckinButton = btn
    }
    func configureNarrativeSafety()->UIButton  {
        let middleAddButton = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
      
        middleAddButton.frame.origin.y = tabBar.bounds.height - middleAddButton.frame.height - 10
        middleAddButton.frame.origin.x = tabBar.bounds.width/2 - middleAddButton.frame.width/2
        middleAddButton.layer.shadowOpacity = 0.2

        
        middleAddButton.layer.shadowColor = UIColor.black.cgColor
        
        middleAddButton.setBackgroundImage(UIImage(named: "JPIDPAGcenveterpost"), for: .normal)
   
        return middleAddButton
    }
}
