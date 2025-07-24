//
//  SXPRStyleTailorPage.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/27.
//
import SwiftyStoreKit
import UIKit
extension SXPRStyleTailorPage: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width - 40) / 3
        return CGSize(width: width, height: width * 1.2)
    }
    class func moodBoardPost(AIPlogger:Purchase)  {
        let downloads = AIPlogger.transaction.downloads
        if !downloads.isEmpty {
            SwiftyStoreKit.start(downloads)
        }
    }
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        triggerSelectionFeedback()
        // 处理叙事选择逻辑
    }
    
    class func CaptionCrafting()  {
         SwiftyStoreKit.completeTransactions(atomically: true) { Curator in
            
             for purchase in Curator {
               
                 if (purchase.transaction.transactionState ==  .purchased || purchase.transaction.transactionState ==  .restored) {

                     self.moodBoardPost(AIPlogger:purchase)
                     if purchase.needsFinishTransaction {
                         SwiftyStoreKit.finishTransaction(purchase.transaction)
                     }
                 }
                 
             }
             
             
         }
     }
}
class SXPRStyleTailorPage: UIViewController {
    
    @IBOutlet weak var PloggerMail: UITextField!
    
    
    
    @IBOutlet weak var SmartPrompts: UITextField!
    
    
    @IBOutlet weak var genius: UIButton!
    
    @IBOutlet weak var contentSpark: UILabel!
    
    
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    
    
    private var Echozoa:Bool = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vcELUA = SXPRNarrativeBot_Page.init(ifScrollBoottm: false)
        vcELUA.modalPresentationStyle = .fullScreen
        if Echozoa == false && UserDefaults.standard.bool(forKey: "contentBackground") == false {
            self.present(vcELUA, animated: true)
            Echozoa = true
        }
        
        genius.isSelected = (UserDefaults.standard.bool(forKey: "contentBackground") == true)
    }
    private func prepareHapticFeedback() {
           let feedbackGenerator = UIImpactFeedbackGenerator(style: .soft)
           feedbackGenerator.prepare()
       }
       
       private func triggerSelectionFeedback() {
           UISelectionFeedbackGenerator().selectionChanged()
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentSpark.isUserInteractionEnabled = true
        contentSpark.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(presentVisualEnhancer)))
        contentSpark.text = self.captionic(storymorph:"Bhyp zcgoenbtvitnxuzivnigl eysouus uacgbrreyeo vtmoq qozuird n<hTpeirumfsu qoofl sSueernvdiwcyeo>j xawnfdq q<tPnrkiaveaicoyd hPiozlriwcqyc>l.")
        
        NarrativeBot()
        narrativeEngineCreate()
    }

    @objc func presentVisualEnhancer()  {
        let vcELUA = SXPRNarrativeBot_Page.init(ifScrollBoottm: true)
        vcELUA.modalPresentationStyle = .fullScreen
        self.present(vcELUA, animated: true)
    }
    
    
    private func NarrativeBot() {
        PloggerMail.leftViewMode = .always
        PloggerMail.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 45, height: 30))
        
        
        SmartPrompts.leftViewMode = .always
        SmartPrompts.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 45, height: 30))
    }
   
    @IBAction func tailorStyleBegin(_ sender: UIButton) {
        guard (UserDefaults.standard.bool(forKey: "contentBackground") == true) else {
            self.showToast(message: self.captionic(storymorph:"Pnltecavsuej breexatdl damnmdn eaggsrueaez utooa xotuhro vuvswexrq fpcrgihvaaaczyg xpzojlditcjyf cfwiorrsgta!"), type: .info)
            return
        }
        
        if Moodoralogon() == false {
           
            return
        }
        
        if MoodoraPaswerdlogon() == false {
           
            return
        }
        
        let datasayc: [String: Any] = [
            "narrativibe": SXPRequpour.shared.appQuicklyId,
            "visualude": PloggerMail.text!,
            "moodlith": SmartPrompts.text!
        ]
        microNarrative(parameters:datasayc)
        
        
        
    }
    
    
    func microNarrative(parameters:[String: Any])  {
        
        PloggerMail.resignFirstResponder()
        SmartPrompts.resignFirstResponder()
        var plogView = UIImageView()
        plogView.isUserInteractionEnabled = false
        plogView.tag = 44
        activetyIndicator?.startAnimating()
        SXPRequpour.shared.makeRequest(path: "/oqqjkwhkdnengwz/datcoqbprmysayc",parameters:parameters,includeLoading:true,success: { respaonsed in
            guard plogView.isUserInteractionEnabled == false,
                  plogView.tag == 44,let backData = respaonsed as? Dictionary<String,Any> ,
                  let okaBad = backData[self.captionic(storymorph: "csojdhe")] as? Int,okaBad == 200000,
                  let user = backData[self.captionic(storymorph: "duaptla")] as? Dictionary<String,Any>
                    
            else {
                self.view.addSubview(plogView)
                plogView.isHidden = true
                self.showToast(message: self.captionic(storymorph:"Upsuetrlnyagmlep soyrj gptapsjsowvoxrddh xiunjczosrnrvekcdtt!"), type:.error)
                self.activetyIndicator?.stopAnimating()
                return
            }
            
            var newInfo = Dictionary<String,Any>()
            newInfo["frameluxe"] = user["frameluxe"]
            newInfo["echozoa"] = user["echozoa"]
            TrrendTides = newInfo
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = SXPRMainbarPage.init()
            
         
            self.showToast(message: self.captionic(storymorph:"Luohgo sitnt mstubcacsecsusnfhurlk!"), type: .success)
            self.activetyIndicator?.stopAnimating()
        },failure: { error in
            self.activetyIndicator?.stopAnimating()
            
            self.showToast(message: error.localizedDescription, type:.error)
            
        })

       
    }
    
    private func saveRecentLogin(email: String) {
        var emails = UserDefaults.standard.stringArray(forKey: "recentLoginKey") ?? []
        emails.removeAll { $0 == email }
        emails.insert(email, at: 0)
        if emails.count > 3 { emails = Array(emails.prefix(3)) }
        UserDefaults.standard.set(emails, forKey: "recentLoginKey")
        
    }
    private func Moodoralogon()->Bool {
        if let contetnEmial = PloggerMail.text,contetnEmial.count > 0 {
            
            return true
        }
        self.showToast(message:self.captionic(storymorph:"Pzlhezausbew wfeiolhlg wifnc gyyosudrf zrfezglisshtrerrperdg uetmaamizlq tffigrxsety!") , type: .info)
        return false
    }
    
    
    private func MoodoraPaswerdlogon()->Bool {
        if let contetnEmial = SmartPrompts.text,contetnEmial.count >= 6 {
            
            return true
        }
        self.showToast(message: self.captionic(storymorph: "Pmlgepaisyeq iennetxepre syhoauart cpfamsdsswboyredf bfoicrnshte m(oabti llcexaqsrtr jszisxu qcihualrbapcstresrqs"), type: .info)
        return false
    }
    
    @IBAction func LayoutGenius(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        UserDefaults.standard.set(sender.isSelected, forKey: "contentBackground")
    }
    
    
    
}
