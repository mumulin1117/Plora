//
//  SXPRMainbarPage.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/27.
//

import UIKit

class SXPRMoodVRGuideController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
        
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
   

        if children.count > 0  && !viewController.isMember(of:SXPRIcyousg.self) {
           
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: false)
    }
    
}

class SXPRIcyousg: UIViewController {
    
}
class SXPRMainbarPage: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor =  UIColor(red: 0.14, green: 0.1, blue: 0.23, alpha: 1)
        setupViewControllers()
        setupMiddleButton()
    }
    
    private func setupViewControllers() {
        
        // 1. Home
        let homeVC = JPIDPlaoertContrerle()
        let homeNav = SXPRMoodVRGuideController(rootViewController: homeVC)
        homeNav.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "house_XSPR")?.withRenderingMode(.alwaysTemplate),
            selectedImage: UIImage(systemName: "house_XSPR_Fill")?.withRenderingMode(.alwaysTemplate)
        )
        
        // 2. DYM
        let plogdyumVC = JPIDViolationContrerle()
        let plogNav = SXPRMoodVRGuideController(rootViewController: plogdyumVC)
        plogdyumVC.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "squre_XSPR")?.withRenderingMode(.alwaysTemplate),
            selectedImage: UIImage(systemName: "squre_XSPR_fill")?.withRenderingMode(.alwaysTemplate)
        )
        
        // 3. Center Placeholder (will be replaced by custom button)
        let centerVC = UIViewController()
        centerVC.tabBarItem = UITabBarItem(
            title: nil,
            image: nil,
            tag: 2
        )
        
        // 2. Video
        let videoVC = JPIDVideonContrerle()
        let videoNav = SXPRMoodVRGuideController(rootViewController: videoVC)
        videoNav.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "video_XSPR")?.withRenderingMode(.alwaysTemplate),
            selectedImage: UIImage(systemName: "video_XSPR_Fill")?.withRenderingMode(.alwaysTemplate)
        )
        
       
     
        
        // 5. Profile
        let profileVC = JPIDUssContrerle()
        let profileNav = SXPRMoodVRGuideController(rootViewController: profileVC)
        profileNav.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "person_XSPR")?.withRenderingMode(.alwaysTemplate),
            selectedImage: UIImage(systemName: "person_XSPR_Fill")?.withRenderingMode(.alwaysTemplate)
        )
        
        viewControllers = [homeNav, plogNav, centerVC,videoNav , profileNav]
        
    }
    
    
    
    private func setupMiddleButton() {
        let middleButton = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        var buttonFrame = middleButton.frame
        buttonFrame.origin.y = tabBar.bounds.height - buttonFrame.height - 10
        buttonFrame.origin.x = tabBar.bounds.width/2 - buttonFrame.width/2
        middleButton.frame = buttonFrame
       

        middleButton.setBackgroundImage(UIImage(systemName: "cenveterpost"), for: .normal)
   
        middleButton.addTarget(self, action: #selector(middleButtonAction), for: .touchUpInside)
        
        middleButton.layer.shadowColor = UIColor.black.cgColor
        middleButton.layer.shadowOpacity = 0.2
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
