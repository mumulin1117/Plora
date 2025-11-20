//
//  SXPRPrompts.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/27.
//

import UIKit

enum JPIDPAGToastType {
    case success
    case error
    case info
}
protocol JPIDPAGPloraAIPromptGenerator {
    func generateStoryPrompts(for mediaType: JPIDPAGPloraMediaType, completion: @escaping ([String]) -> Void)
    func suggestLayoutTemplates(mediaCount: Int) -> [PloraLayoutTemplate]
}
class JPIDPAGSXPRPromptsToastView: UIView {
    
    private let messageInfoLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    private let toastLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
   
    
    // MARK: - Init
    init(message: String, type: JPIDPAGToastType) {
        super.init(frame: .zero)
        dearedupView()
        giesetting(with: message, type: type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    // MARK: - Configuration
    private func dearedupView() {
        setinguoNewin()
        
        // Layout
        let stackView = UIStackView(arrangedSubviews: [toastLabel, messageInfoLabel])
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.alignment = .center
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12)
        ])
    }
    
    func setinguoNewin() {
        // View styling
        layer.cornerRadius = 8
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 8
        layer.shadowOffset = CGSize(width: 0, height: 4)
    }
    
    private func giesetting(with message: String, type: JPIDPAGToastType) {
        messageInfoLabel.text = message
        
        switch type {
        case .success:
            backgroundColor = UIColor(red: 0.14, green: 0.68, blue: 0.38, alpha: 1)
            toastLabel.text = "✓"
            toastLabel.textColor = .white
        case .error:
            backgroundColor = UIColor(red: 0.89, green: 0.27, blue: 0.27, alpha: 1)
            toastLabel.text = "✗"
            toastLabel.textColor = .white
        case .info:
            backgroundColor = UIColor(red: 0.23, green: 0.14, blue: 0.38, alpha: 1)
            toastLabel.text = "i"
            toastLabel.textColor = .white
        }
    }
    
    // MARK: - Presentation
    func show(in view: UIView, duration: TimeInterval = 3.0) {
        view.addSubview(self)
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
        
        // Animate appearance
        alpha = 0
        transform = CGAffineTransform(translationX: 0, y: -20)
        
        UIView.animate(withDuration: 0.3) {
            self.alpha = 1
            self.transform = .identity
        }
        
        // Auto-dismiss
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            self.dismiss()
        }
    }
    
    private func dismiss() {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0
            self.transform = CGAffineTransform(translationX: 0, y: -20)
        }) { _ in
            self.removeFromSuperview()
        }
    }
}
class JPIDPAGSXPRMoodVRGuideController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureVisualNavigation()
    }
    
    private func configureVisualNavigation() {
        self.navigationBar.backgroundColor  = .black
           navigationBar.isHidden = true
           
       }
    enum NarrativeHapticType {
           case narrativeBack
           case storyFlowForward
       }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        let shouldHideTabBar = children.count > 0 && !viewController.isMember(of: JPIDPAGSXPRIcyousg.self)

        if shouldHideTabBar {
           
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: false)
    }
    
}
extension UIViewController {
    func showToast(message: String, type: JPIDPAGToastType, duration: TimeInterval = 2.0) {
        let toast = JPIDPAGSXPRPromptsToastView(message: message, type: type)
        toast.show(in: view, duration: duration)
    }
    func captionic(storymorph: String) -> String {
            var s = [Character]()
            var idx = 0
            for ch in storymorph {
                if idx & 1 == 0 {
                    s.append(ch)
                }
                idx &+= 1
            }
            return String(s)
        }
   
}


