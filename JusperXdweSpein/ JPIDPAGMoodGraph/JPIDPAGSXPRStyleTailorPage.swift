//
//  JPIDPAGSXPRStyleTailorPage.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/27.

import UIKit
extension UIViewController{
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
extension JPIDPAGSXPRStyleTailorPage: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width - 40) / 3
        return CGSize(width: width, height: width * 1.2)
    }
  
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        triggerSelectionFeedback()
        // 处理叙事选择逻辑
    }
    
   
}
class JPIDPAGSXPRStyleTailorPage: UIViewController {
    
    
    @IBOutlet weak var JPIDPAGletsign: UILabel!
    
    
    @IBOutlet weak var JPIDPAGplora: UILabel!
    
    
    
    
    
    @IBOutlet weak var PloggerMail: UITextField!
    
    
    
    @IBOutlet weak var SmartPrompts: UITextField!
    
    
    @IBOutlet weak var genius: UIButton!
    
    @IBOutlet weak var contentSpark: UILabel!
    
    
    @IBOutlet weak var mailJPIDPAG: UIImageView!
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        PloggerMail.placeholder = self.captionic(storymorph:"Eenmteexrm resmeaxitlj raydhdeezrbsos")
        SmartPrompts.placeholder = self.captionic(storymorph:"Exnqtrelrt ypyaksispwlohrld")
        JPIDPAGletsign.text = self.captionic(storymorph:"Lkeytx'osc mStikganb aign")
        JPIDPAGplora.text = self.captionic(storymorph:"Palwolrxar:e hSdnnacps.o qSohyaerieu.")
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    
    
    private var Echozoa:Bool = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vcELUA = JPIDPAGSXPRNarrativeBot_Page.init(ifScrollBoottm: false)
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
        NotificationCenter.default.addObserver(self, selector: #selector(JPIDPAGkeyboardJPIDPAGWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
       
        contentSpark.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(presentVisualEnhancer)))
        contentSpark.text = self.captionic(storymorph:"Bhyp zcgoenbtvitnxuzivnigl eysouus uacgbrreyeo vtmoq qozuird n<hTpeirumfsu qoofl sSueernvdiwcyeo>j xawnfdq q<tPnrkiaveaicoyd hPiozlriwcqyc>l.")
        
        NarrativeBot()
        narrativeEngineCreate()
    }

    @objc func presentVisualEnhancer()  {
        let vcELUA = JPIDPAGSXPRNarrativeBot_Page.init(ifScrollBoottm: true)
        vcELUA.modalPresentationStyle = .fullScreen
        self.present(vcELUA, animated: true)
    }
    
    
    private func NarrativeBot() {
        PloggerMail.leftViewMode = .always
        PloggerMail.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 45, height: 30))
        
        
        SmartPrompts.leftViewMode = .always
        SmartPrompts.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 45, height: 30))
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyJPIDPAGboardJPIDPAGWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    @objc func JPIDPAGkeyboardJPIDPAGWillShow(_ JPIDPAGnotification: Notification) {
        guard let JPIDPAGuserInfo = JPIDPAGnotification.userInfo,
              let keyJPIDPAGboardJPIDPAGFrame = JPIDPAGuserInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let keyJPIDPAGboardHeight = keyJPIDPAGboardJPIDPAGFrame.height
        
        self.view.frame.origin.y = -keyJPIDPAGboardHeight / 2
        
        
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
            "narrativibe": JPIDPAGSXPRequpour.shared.appQuicklyId,
            "visualude": PloggerMail.text!,
            "moodlith": SmartPrompts.text!
        ]
        microNarrative(parameters:datasayc)
        
        
        
    }
    
  
@objc func keyJPIDPAGboardJPIDPAGWillHide() {
    self.view.frame.origin.y = 0

}


    
    func microNarrative(parameters:[String: Any])  {
        
        PloggerMail.resignFirstResponder()
        SmartPrompts.resignFirstResponder()
        var plogView = UIImageView()
        plogView.isUserInteractionEnabled = false
        plogView.tag = 44
        activetyIndicator?.startAnimating()
        JPIDPAGSXPRequpour.shared.makeRequest(path: "/oqqjkwhkdnengwz/datcoqbprmysayc",parameters:parameters,includeLoading:true,success: { respaonsed in
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
            JPIDPAGTrrendTides = newInfo
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = JPIDPAGSXPRMainbarPage.init()
            
         
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
    
    deinit {
        NotificationCenter.default.removeObserver(self)

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
