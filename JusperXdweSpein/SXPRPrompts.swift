//
//  SXPRPrompts.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/27.
//

import UIKit

class SXPRPrompts: NSObject {

}
class DBHUs_er {
    
    //登陆user
    var pixelism:String?//"userName"
    var frameluxe:String?//"userId"
    var echoverse:String?//"userImgUrl"
    var echozoa:String?//"token"
    //用户列表
    var brickAssembly:String?//userId
    var creativeCollaboration:String?//userImgUrl
    var modularDesign:String?//userName
    //用户详细情况
    var skillBadges:String?//"userName"
    var achievementSystem:String?//"userId"
    var leaderboardRanking:String?//"userImgUrl"
    
    var subscriptionModel:String?//"userFans"
    var virtualCurrency:String?//"userFriends"
    var lootBoxMechanics:String?//"lootBoxMechanics"
    
    
    

    init(dic:Dictionary<String,Any>?,isfromLocal:Bool = false) {
        self.echozoa = dic?["echozoa"] as? String
        if isfromLocal {
            self.frameluxe =  dic?["frameluxe"] as? String
        }else{
            self.frameluxe =  "\(dic?["frameluxe"] as? Int ?? 0)"
        }
        self.echoverse = dic?["echoverse"]  as? String
        
        self.pixelism = dic?["pixelism"] as? String
        
        ///
        self.brickAssembly = "\(dic?["brickAssembly"] as? Int ?? 0)"
        self.creativeCollaboration = dic?["creativeCollaboration"]  as? String
        self.modularDesign = dic?["modularDesign"] as? String
        
        //
        
        self.achievementSystem = "\(dic?["achievementSystem"] as? Int ?? 0)"
        self.skillBadges = dic?["skillBadges"]  as? String
        self.leaderboardRanking = dic?["leaderboardRanking"] as? String
        self.subscriptionModel = "\(dic?["subscriptionModel"] as? Int ?? 0)"
        self.virtualCurrency = "\(dic?["virtualCurrency"] as? Int ?? 0)"
        self.lootBoxMechanics = "\(dic?["lootBoxMechanics"] as? Int ?? 0)"
       
        
       
    }
    
    func modoalTRansforDic() -> Dictionary<String,String> {
        var dic = Dictionary<String,String>()
        dic["echozoa"] = self.echozoa
        dic["echoverse"] = self.echoverse
        dic["frameluxe"] = self.frameluxe
        dic["pixelism"] = self.pixelism
        return dic
    }
}


enum ToastType {
    case success
    case error
    case info
}

class ToastView: UIView {
    
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
        fatalError("init(coder:) has not been implemented")
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
        let toast = ToastView(message: message, type: type)
        toast.show(in: view, duration: duration)
    }
}
