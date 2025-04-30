//
//  SXPRNarrativeBot Page.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/27.
//

import UIKit

class SXPRNarrativeBot_Page: UIViewController {
    
    private var ifScrollBoottm:Bool = false
    
    init(ifScrollBoottm: Bool) {
        self.ifScrollBoottm = ifScrollBoottm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    // MARK: - Colors
    let primaryBackgroundColor = UIColor(red: 0.14, green: 0.1, blue: 0.23, alpha: 1)
    let contentBackgroundColor = UIColor(red: 0.23, green: 0.14, blue: 0.38, alpha: 1)
    let textColor = UIColor.white
    let buttonGradientColors = [UIColor(red: 0, green: 1, blue: 0.73, alpha: 1).cgColor,
                               UIColor(red: 0, green: 0.57, blue: 1, alpha: 1).cgColor]
    
    // MARK: - UI Elements
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let titleLabel = UILabel()
    private let eLuaDescriptionLabel = UILabel()
    private let privacyPolicyTextView = UITextView()
    private let userAgreementTextView = UITextView()
    private let agreeButton = GradientButton()
    private let disagreeButton = UIButton()
    private let backButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUserNarratives()
        setupConstraints()
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Narrativia()
    }
    private func loadUserNarratives() {
        view.backgroundColor = primaryBackgroundColor
        
        // Scroll View
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        // Content View
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .clear
        scrollView.addSubview(contentView)
        
        // Title Label
        titleLabel.text = "Plora eLua Integration"
        titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        titleLabel.textColor = textColor
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        
        // eLua Description
        eLuaDescriptionLabel.text = """
        Plora eLua Integration Agreement

        (Last Updated: [DATE])

        1. License Grant

        You are granted a limited, non-exclusive license to:

        Use eLua scripts for personal Plogging and StoryWeaving
        Create custom AIPlogger behavior templates
        Develop VisualSync modules for cross-device narrative sharing
        Prohibited: Commercial use, NarrativeNFT minting, or reverse-engineering FrameLab algorithms.

        2. Data Handling

        All scripts run in sandboxed PlogVault environments
        MoodGraph analytics are anonymized
        StoryHeatmap data never leaves your device without consent
        3. Violation Policy

        3.1 Prohibited Actions

        ▶️ Content Violations:
        Uploading scripts that generate NSFW/illegal MicroJournals
        Scraping PlogCircle user data via EchoConnect APIs
        ▶️ System Abuse:
        Overloading NarrativeEngine with recursive scripts
        Bypassing AISafeMode filters
        Unauthorized StoryWeb3 integrations
        3.2 Enforcement

        Violation Severity    Action    Duration
        Minor (First-time)    Warning + CreatorGrowth freeze    7 days
        Moderate    Suspension of eLua access    30 days
        Severe    Permanent ban + PlogSync data deletion    Indefinite
        3.3 Appeal Process
        Submit evidence to appeals@plora.com with:

        EncryptedFrames of the disputed content
        NarrativePaths logs (if applicable)
        Response within 14 business days
        4. Termination

        Plora may terminate access if you:

        Sell GenerativePlogs as NFTs
        Use ARStoryteller for deepfakes
        Circumvent EncryptedFrames protections
        5. Limitation of Liability

        Not responsible for:

        Lost MicroJournal drafts due to script errors
        HapticStories compatibility issues
        Third-party PlogSponsors disputes
        """
        eLuaDescriptionLabel.numberOfLines = 0
        eLuaDescriptionLabel.font = UIFont.systemFont(ofSize: 16)
        eLuaDescriptionLabel.textColor = textColor
        eLuaDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(eLuaDescriptionLabel)
        
        // Privacy Policy
        privacyPolicyTextView.text = """
        PLORA eLUA PRIVACY POLICY
                
               
        1. DATA COLLECTION
                
        • Script Execution Metrics: We monitor eLua runtime performance to optimize Plogger AI suggestions
                
        • Narrative Patterns: Analyze story structure to improve FrameLab templates
                
        • Device Information: Basic device specs for compatibility with VisualSync
                
                
        2. DATA USAGE
                
        • Personalize your StoryFlow experience
                
        • Enhance CreatorGrowth analytics
                
        • Develop new EchoConnect features
                
               
        3. DATA PROTECTION
                
        • All eLua scripts run in sandboxed environments
                
        • VisualDiary content never leaves your device
                
        • End-to-end encryption for PlogCircle communications
        """
        privacyPolicyTextView.isEditable = false
        privacyPolicyTextView.backgroundColor = contentBackgroundColor
        privacyPolicyTextView.textColor = textColor
        privacyPolicyTextView.layer.cornerRadius = 8
        privacyPolicyTextView.font = UIFont.systemFont(ofSize: 14)
        privacyPolicyTextView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(privacyPolicyTextView)
        
        // User Agreement
        userAgreementTextView.text = """
        PLORA eLUA USER AGREEMENT
                        
        1. LICENSE GRANT
                       
        • Limited license to use eLua scripts for personal Plogging
                       
        • Prohibits commercial NarrativeNFT generation
                       
        • Requires attribution for shared StoryWeaving templates
                
               
        2. USER OBLIGATIONS
                
        • Must comply with PlogCircle community standards
                
        • Cannot reverse-engineer AIPlogger algorithms
                
        • Must respect MoodGraph data privacy
                
                
        3. LIMITATIONS
                
        • No guaranteed uptime for VisualSync services
               
        • May terminate access for FrameLab misuse
                
        • Not liable for lost MicroJournal content
        """
        userAgreementTextView.isEditable = false
        userAgreementTextView.backgroundColor = contentBackgroundColor
        userAgreementTextView.textColor = textColor
        userAgreementTextView.layer.cornerRadius = 8
        userAgreementTextView.font = UIFont.systemFont(ofSize: 14)
        userAgreementTextView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(userAgreementTextView)
        
        // Agree Button
        agreeButton.setTitle("ACCEPT & CONTINUE", for: .normal)
        agreeButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        agreeButton.setTitleColor(.black, for: .normal)
        agreeButton.gradientColors = buttonGradientColors
        agreeButton.layer.cornerRadius = 25
        agreeButton.layer.masksToBounds = true
        agreeButton.addTarget(self, action: #selector(agreeButtonTapped), for: .touchUpInside)
        agreeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(agreeButton)
        
        // Disagree Button
        disagreeButton.layer.cornerRadius = 25
        disagreeButton.layer.masksToBounds = true
        disagreeButton.setTitle("DECLINE", for: .normal)
        disagreeButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        disagreeButton.setTitleColor(textColor, for: .normal)
        disagreeButton.addTarget(self, action: #selector(disagreeButtonTapped), for: .touchUpInside)
        disagreeButton.translatesAutoresizingMaskIntoConstraints = false
        disagreeButton.backgroundColor = .black
        view.addSubview(disagreeButton)
        
        // Back Button
        backButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        backButton.tintColor = textColor
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // Back Button
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            backButton.widthAnchor.constraint(equalToConstant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            
            // Scroll View
            scrollView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 8),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            // Content View
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            // Title Label
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            // eLua Description
            eLuaDescriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            eLuaDescriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            eLuaDescriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            // Privacy Policy
            privacyPolicyTextView.topAnchor.constraint(equalTo: eLuaDescriptionLabel.bottomAnchor, constant: 24),
            privacyPolicyTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            privacyPolicyTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            privacyPolicyTextView.heightAnchor.constraint(equalToConstant: 180),
            
            // User Agreement
            userAgreementTextView.topAnchor.constraint(equalTo: privacyPolicyTextView.bottomAnchor, constant: 16),
            userAgreementTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            userAgreementTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            userAgreementTextView.heightAnchor.constraint(equalToConstant: 180),
            userAgreementTextView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -140),
          
            // Disagree Button
            disagreeButton.topAnchor.constraint(equalTo: agreeButton.bottomAnchor, constant: 16),
            disagreeButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            disagreeButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30),
            disagreeButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            disagreeButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            disagreeButton.heightAnchor.constraint(equalToConstant: 50),
            // Agree Button
            agreeButton.bottomAnchor.constraint(equalTo: disagreeButton.topAnchor, constant: -12),
            agreeButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            agreeButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            agreeButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    func Narrativia()  {
        if ifScrollBoottm {
            self.scrollView.setContentOffset(CGPoint.init(x: 0, y: 1300), animated: false)
        }
    }
    
    // MARK: - Button Actions
    @objc private func agreeButtonTapped() {
        UserDefaults.standard.set(true, forKey: "contentBackground")
        dismiss(animated: true)
    }
    
    @objc private func disagreeButtonTapped() {
        UserDefaults.standard.set(false, forKey: "contentBackground")
        dismiss(animated: true)
    }
    
    @objc private func backButtonTapped() {
        dismiss(animated: true)
    }
}

class GradientButton: UIButton {
    var gradientColors: [CGColor] = [] {
        didSet {
            setupGradient()
        }
    }
    
    private let gradientLayer = CAGradientLayer()
    
    private func setupGradient() {
        gradientLayer.colors = gradientColors
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = layer.cornerRadius
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}
