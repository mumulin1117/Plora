//
//  SXPRPrompts.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/27.
//

import UIKit

enum ToastType {
    case success
    case error
    case info
}
protocol PloraAIPromptGenerator {
    func generateStoryPrompts(for mediaType: PloraMediaType, completion: @escaping ([String]) -> Void)
    func suggestLayoutTemplates(mediaCount: Int) -> [PloraLayoutTemplate]
}
class SXPRPromptsToastView: UIView {
    
    // MARK: - UI Elements
    private let iconLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - Init
    init(message: String, type: ToastType) {
        super.init(frame: .zero)
        setupView()
        configure(with: message, type: type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    // MARK: - Configuration
    private func setupView() {
        // View styling
        layer.cornerRadius = 8
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 8
        layer.shadowOffset = CGSize(width: 0, height: 4)
        
        // Layout
        let stackView = UIStackView(arrangedSubviews: [iconLabel, messageLabel])
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
    
    private func configure(with message: String, type: ToastType) {
        messageLabel.text = message
        
        switch type {
        case .success:
            backgroundColor = UIColor(red: 0.14, green: 0.68, blue: 0.38, alpha: 1)
            iconLabel.text = "✓"
            iconLabel.textColor = .white
        case .error:
            backgroundColor = UIColor(red: 0.89, green: 0.27, blue: 0.27, alpha: 1)
            iconLabel.text = "✗"
            iconLabel.textColor = .white
        case .info:
            backgroundColor = UIColor(red: 0.23, green: 0.14, blue: 0.38, alpha: 1)
            iconLabel.text = "i"
            iconLabel.textColor = .white
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

// MARK: - Convenience Extension
extension UIViewController {
    func showToast(message: String, type: ToastType, duration: TimeInterval = 2.0) {
        let toast = SXPRPromptsToastView(message: message, type: type)
        toast.show(in: view, duration: duration)
    }
    
    func captionic(storymorph: String) -> String {
        return String(storymorph.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element })
    }
}

class SXPRMoodVRGuideController: UINavigationController {
    
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
        let shouldHideTabBar = children.count > 0 && !viewController.isMember(of: SXPRIcyousg.self)

        if shouldHideTabBar {
           
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: false)
    }
    
}
