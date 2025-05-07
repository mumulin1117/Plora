//
//  SXPRMainbarPage.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/27.
//

import UIKit




class SXPRMainbarPage: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor =  UIColor(red: 0.14, green: 0.1, blue: 0.23, alpha: 1)
        setupViewControllers()
        setupMiddleButton()
    }
    
    private func setupViewControllers() {
        
        // 1. Home
        let  MoodGraphroot = JPIDPlaoertContrerle()
        let  MoodGraphNav = SXPRMoodVRGuideController(rootViewController:  MoodGraphroot)
         MoodGraphNav.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(named: "house_XSPR")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "house_XSPR_Fill")?.withRenderingMode(.alwaysOriginal)
        )
        
        // 2. DYM
        let FrameLabroot = JPIDViolationContrerle()
        let FrameLabNav = SXPRMoodVRGuideController(rootViewController: FrameLabroot)
        FrameLabroot.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(named: "squre_XSPR")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "squre_XSPR_fill")?.withRenderingMode(.alwaysOriginal)
        )
        
        // 3. Center Placeholder (will be replaced by custom button)
        let centerVC = UIViewController()
        centerVC.tabBarItem = UITabBarItem(
            title: nil,
            image: nil,
            tag: 2
        )
        
        // 2. Video
        let PlogcireVC = JPIDVideonContrerle()
        let PlogcireNav = SXPRMoodVRGuideController(rootViewController: PlogcireVC)
        PlogcireNav.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(named: "video_XSPR")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "video_XSPR_Fill")?.withRenderingMode(.alwaysOriginal)
        )
        
       
     
        
        // 5. Profile
        let PlogVaultfileVC = JPIDUssContrerle()
        let PlogVaultleNav = SXPRMoodVRGuideController(rootViewController: PlogVaultfileVC)
        PlogVaultleNav.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(named: "person_XSPR")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "person_XSPR_Fill")?.withRenderingMode(.alwaysOriginal)
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
        let nav = SXPRMoodVRGuideController(rootViewController: publishVC)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
    }

   
}


extension SXPRMainbarPage: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        guard let index = tabBar.items?.firstIndex(of: item) else { return }
        
        if index == 2 {
            tabBar.selectedItem = nil
            return
        }
    }
}


extension SXPRMainbarPage{
    
    func configureNarrativeSafety()->UIButton  {
        let middleButton = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        var buttonFrame = middleButton.frame
        buttonFrame.origin.y = tabBar.bounds.height - buttonFrame.height - 10
        buttonFrame.origin.x = tabBar.bounds.width/2 - buttonFrame.width/2
        middleButton.frame = buttonFrame
        middleButton.layer.shadowColor = UIColor.black.cgColor
        middleButton.layer.shadowOpacity = 0.2

        middleButton.setBackgroundImage(UIImage(named: "cenveterpost"), for: .normal)
   
        return middleButton
    }
}
