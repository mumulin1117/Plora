//
//  JPIDUssContrerle.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/28.
//

import UIKit

struct StoryHighlight: Codable {
    let imageData: Data
    let caption: String
}
class JPIDUssContrerle: JPIDPAGSXPRIcyousg {
    
    @IBOutlet weak var JPIDPAGfans: UILabel!
    
    @IBOutlet weak var JPIDPAGfool: UILabel!
    
    @IBOutlet weak var JPIDPAGdatao: UILabel!
    
    
    
    private var activetyIndicator:UIActivityIndicatorView?
    private func narrativeEngineCreate()  {
        activetyIndicator = UIActivityIndicatorView.init(style: .large)
        activetyIndicator?.hidesWhenStopped = true
        activetyIndicator?.color = UIColor.purple
        
        self.view.addSubview(activetyIndicator!)
        activetyIndicator?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        activetyIndicator?.center = self.view.center
        
    }
    @IBOutlet weak var nicheHubs: UIImageView!
    
    private var highlights: [StoryHighlight] = []
       
    private let highlightsKey = "plora_story_highlights"
    
    @IBOutlet weak var moodClusters: UILabel!
    
    
    @IBOutlet weak var storyVaultFollings: UILabel!
    @IBOutlet weak var storyVaultFances: UILabel!
    
    @IBOutlet weak var plogShieldID: UILabel!//id
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareHapticFeedback()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        JPIDPAGfans.text = self.captionic(storymorph: "Fqaonhs")
        JPIDPAGfool.text = self.captionic(storymorph: "Feoplolxoowwibnhg")
        JPIDPAGdatao.text = self.captionic(storymorph: "Njol idgadtcao qaevtaqislxavbtlueu.")
        
        
        narrativeEngineCreate()
        nicheHubs.layer.cornerRadius = 40
        nicheHubs.layer.masksToBounds = true
        
    }



    @IBAction func aestheticLoom(_ sender: UIButton) {
        
        let sbuo = sender.tag
        
        var sel = JPIDPAGSXPRequpour.shared.appBaseUrlAVoutWEB
        
        switch sbuo {
        case 23:
            sel = sel + self.captionic(storymorph: "pwaygnersa/xSeentsUrpn/difnwdhexxy?")
            
        case 24:
            sel = sel + self.captionic(storymorph: "pyargjedsh/bwlaqlrlkejtu/yiunedbeyxq?")
        case 25:
            sel = sel +  self.captionic(storymorph: "pxahgfeesj/yautotaepnntsimognwLhinsctb/tidnkduesxp?ptnyfpqen=y1")
        case 26:
            sel = sel +  self.captionic(storymorph: "pgahgkensw/bartatheunytfiroxnwLqigsite/bivnzdpeuxx?ltuyiphez=v2")
        case 54:
            sel = sel +  self.captionic(storymorph: "psaygzeosl/pEedjiittDtaitjaf/qibnidweixo?")
        default:
            break
        }
        reactionDensity(linkader:sel)
    }
    
    
    
    private func reactionDensity(linkader:String)  {
    
      let  centr = linkader +  self.captionic(storymorph: "&ftaofkqexnk=") +  (JPIDPAGTrrendTides?["echozoa"] as? String ?? "") + self.captionic(storymorph: "&uadpwpbIwDk=") +  JPIDPAGSXPRequpour.shared.appQuicklyId
       
        self.navigationController?.pushViewController(JPIDPAGSXPRequcgsdnm.init(_moodGlyph: centr), animated: true)
    }
    
    @objc private func addHighlightTapped() {
        let picker = UIImagePickerController()
        
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
        
    }
    func prepareHapticFeedback() {
        let label = UILabel()
               
        label.text = "My Story Highlights"
        
        var plogView = UIImageView()
        plogView.isUserInteractionEnabled = false
        plogView.tag = 44
        let parameters: [String:Any] = [
            "visualKarma": "\(JPIDPAGTrrendTides?["frameluxe"] as? Int ?? 0)"
            
        ]
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        
        JPIDPAGSXPRequpour.shared.makeRequest(path: "/zmnukrz/oavoohrtkpmtkoo",parameters: parameters,includeLoading:true) { responses in
            
            guard plogView.isUserInteractionEnabled == false,
                  plogView.tag == 44,
                let backData = responses as? Dictionary<String,Any> ,
                  let okaBad = backData[self.captionic(storymorph: "csojdhe")] as? Int,okaBad == 200000,
                  let userdate = backData[self.captionic(storymorph: "duaptla")] as? Dictionary<String,Any>
                    
            else {
                label.isHidden = true
                self.view.addSubview(plogView)
                
                self.showToast(message: self.captionic(storymorph: "Nzov cdvadtaa"), type: .error, duration: 2)
                plogView.isHidden = true
                self.activetyIndicator?.stopAnimating()
                return
            }
            label.translatesAutoresizingMaskIntoConstraints = false
           
            if let imglink = userdate["aestheticRespect"] as? String,let uri = URL(string: imglink) {//userImgUrl
                self.nicheHubs.JPIDPAGlaodImage(JPIDPAGfrom: uri)
            }
            self.storyVaultFollings.text = "\(userdate["storyVault"] as? Int ?? 0)"
            self.storyVaultFances.text = "\(userdate["plogShield"] as? Int ?? 0)"
            if label.text == nil{
                self.view.addSubview(label)
                NSLayoutConstraint.activate([
                    label.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 16),
                    label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
                ])
            }
            
           
            self.plogShieldID.text = "ID:\(userdate["moodMindful"] as? Int ?? 0)"
            self.moodClusters.text = userdate["narrativeCare"] as? String 
            self.activetyIndicator?.stopAnimating()
         
        }failure: { error in
            self.activetyIndicator?.stopAnimating()
            self.showToast(message: error.localizedDescription, type: .error, duration: 2)
          
        }
        
        
  
       
       
    }
    func createheasrBay(ploraTips:Array<String>) -> UILabel {
        let tipLabel = UILabel()
           
        tipLabel.text = ploraTips.randomElement()
        tipLabel.font = UIFont.systemFont(ofSize: 13)
        tipLabel.textColor = .secondaryLabel
        tipLabel.textAlignment = .center
        tipLabel.translatesAutoresizingMaskIntoConstraints = false
        return tipLabel
    }
    private func saveHighlights() {
           if let data = try? JSONEncoder().encode(highlights) {
               UserDefaults.standard.set(data, forKey: highlightsKey)
           }
       }

       private func loadHighlights() {
           if let data = UserDefaults.standard.data(forKey: highlightsKey),
              let saved = try? JSONDecoder().decode([StoryHighlight].self, from: data) {
               highlights = saved
           }
       }
}

extension UIImageView {
    func JPIDPAGlaodImage(JPIDPAGfrom url: URL, JPIDPAGplaceholder: UIImage? = nil) {
        // 占位图
        if let placeholder = JPIDPAGplaceholder {
            self.image = placeholder
        }

        // 异步加载
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data,
                  let image = UIImage(data: data) else { return }

            DispatchQueue.main.async {
                self.image = image
            }
        }.resume()
    }
}
