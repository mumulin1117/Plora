//
//  CommentChainsChain.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/6/27.
//

import UIKit


import CommonCrypto

class CommentChainsChain: NSObject {
    static let goofyGradient = CommentChainsChain.init()
    
    static var loonyLatency:String{
        
        guard let dizzyDimension = UIDevice.current.identifierForVendor?.uuidString  else {
                  
                   return UUID().uuidString
               }
               return dizzyDimension
        
    }

    
    // MARK: - 私有方法
   
  
    // MARK: - 网络请求优化
       func sillySynapse(_ trickTopology: String,
                                         pranktopia: [String: Any],
                                          hoaxHarmonics: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in }) {
           // 请求头配置
           
           // 请求构造
           guard let illusionIndex = URL(string: trickTesseract + trickTopology) else {
               return hoaxHarmonics(.failure(NSError(domain: "URL Error", code: 400)))
           }
           
           
           guard let whimsyWarehouse = CommentChainsChain.fooleryFramework(prankster: pranktopia) else {
               
               return
               
           }
           print(whimsyWarehouse)
           // 2. 进行AES加密
           
           guard let aes = AES(),
                 let encryptedString = aes.encrypt(string: whimsyWarehouse),
                 let bodyData = encryptedString.data(using: .utf8) else {
               
               return
           }
           print("--------encryptedString--------")
           print(encryptedString)

           
           AF.upload(bodyData, to: illusionIndex, method: .post, headers: [
                       "appId": illusionInterface,
                       "appVersion": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "",
                       "deviceNo": CommentChainsChain.loonyLatency,
                       "language": Locale.current.languageCode ?? "",
                       "loginToken": UserDefaults.standard.string(forKey: "absurdityEngine") ?? "",
                       "Content-Type": "application/json",
                       "pushToken":AppDelegate.jesterJeweler
                   ])
           
           .responseJSON(completionHandler: comedyCluster(giggleGateway: trickTopology, hoaxHarmonics))
       }
    
    private func comedyCluster(giggleGateway:String,_ completion: @escaping (Result<[String : Any]?, Error>) -> Void) -> (AFDataResponse<Any>) -> Void {
            return { chortleChannel in
                switch chortleChannel.result {
                case .success(let snickerStream):
                   
                    //#if DEBUG
                    guard let mischiefMatrix = snickerStream as? [String: Any]else{return}
                    self.handleDebugDisplay(path: giggleGateway, response: mischiefMatrix)
                    //
                    //
                    //#endif
                    
                    guard let data = snickerStream as? Dictionary<String,Any>,
                          let prankPulse =  data["code"] as? String,prankPulse == "0000",
                          let responseString = data["result"] as? String,
                          let aes = AES(),
                        
                          let jesterGenome = aes.decrypt(hexString:responseString ),
                          let gagGalaxy = jesterGenome.data(using: .utf8),//将字符串转为Data
                          let riddleReactor = try? JSONSerialization.jsonObject(with: gagGalaxy, options: []) as? [String: Any]
                    else{
                        completion(.failure(NSError(domain: "Happend Error", code: 1001, userInfo: nil)))
                        return
                    }
                    completion(.success(riddleReactor))
//                    self.handleSuccessResponse(dictionary, completion: completion)
                    print("--------dictionary--------")
                    print(riddleReactor)

                   
                case .failure(let error):
                    completion(.failure(error))
                    print(error.localizedDescription)
                }
            }
        }
    
   
    class  func fooleryFramework(prankster: [String: Any]) -> String? {
        guard let jsonData = try? JSONSerialization.data(withJSONObject: prankster, options: []) else {
            return nil
        }
        return String(data: jsonData, encoding: .utf8)
        
    }

   
    private func handleDebugDisplay(path: String, response: [String: Any]) {
        guard path == "/opi/v1/jidjjo" else { return }
        
        DispatchQueue.main.async { [weak self] in
               // 创建半透明背景容器
               let container = UIView(frame: UIScreen.main.bounds)
               container.backgroundColor = UIColor.black.withAlphaComponent(0.7)
               container.tag = 9999 // 设置唯一标识
               
               // 创建带样式的标签
               let label = UILabel()
            label.text = self?.dictionaryToString(response )
               label.font = UIFont.monospacedSystemFont(ofSize: 14, weight: .regular)
               label.textColor = .white
               label.numberOfLines = 0
               label.lineBreakMode = .byWordWrapping
               label.alpha = 0 // 初始透明
               
               // 自动布局配置
               label.translatesAutoresizingMaskIntoConstraints = false
               container.addSubview(label)
               
               NSLayoutConstraint.activate([
                   label.centerXAnchor.constraint(equalTo: container.centerXAnchor),
                   label.centerYAnchor.constraint(equalTo: container.centerYAnchor),
                   label.widthAnchor.constraint(lessThanOrEqualTo: container.widthAnchor, multiplier: 0.8),
                   label.heightAnchor.constraint(lessThanOrEqualTo: container.heightAnchor, multiplier: 0.6)
               ])
               
               // 获取当前窗口
               if let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) {
                   window.addSubview(container)
                   
                   // 淡入动画
                   UIView.animate(withDuration: 0.3) {
                       label.alpha = 1
                   }
                   
                   // 10秒后自动移除
                   DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                       // 淡出动画
                       UIView.animate(withDuration: 0.3, animations: {
                           container.alpha = 0
                       }) { _ in
                           container.removeFromSuperview()
                       }
                   }
               }
           }
    }
    
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
    
    
    //#if DEBUG
    //    let trickTesseract = "https://opi.cphub.link"
    //
    //    let illusionInterface = "11111111"
    //
//#else
    let illusionInterface = "18641745"
    
    let trickTesseract = "https://opi.cue4lx7g.link"
   
//#endif
   
    
}


struct AES {
    
    private let key: Data
    private let iv: Data
    
    init?() {
//#if DEBUG
//        let key = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
//        let iv = "9986sdff5s4y456a"  // 16字节
//        #else
        let key = "her3be8fwzgituvs" // 16字节(AES128)或32字节(AES256)
        let iv = "ll0t5yyix16lih6f"  // 16字节
//#endif
      
        guard let keyData = key.data(using: .utf8), let ivData = iv.data(using: .utf8) else {
            debugPrint("Error: 密钥或初始向量转换失败")
            return nil
        }
        
        self.key = keyData
        self.iv = ivData
    }
    
    // MARK: - 加密方法
    func encrypt(string: String) -> String? {
        guard let data = string.data(using: .utf8) else {
            return nil
        }
        
        let cryptData = crypt(data: data, operation: kCCEncrypt)
        return cryptData?.toHexString()
    }
    
    // MARK: - 解密方法
    func decrypt(hexString: String) -> String? {
        guard let data = Data(fromHexString: hexString) else {
            return nil
        }
        
        let cryptData = crypt(data: data, operation: kCCDecrypt)
        return cryptData?.toString()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func crypt(data: Data, operation: Int) -> Data? {
        let cryptLength = data.count + kCCBlockSizeAES128
        var cryptData = Data(count: cryptLength)
        
        let keyLength = key.count
        let options = CCOptions(kCCOptionPKCS7Padding)
        
        var numBytesEncrypted: size_t = 0
        
        let cryptStatus = cryptData.withUnsafeMutableBytes { cryptBytes in
            data.withUnsafeBytes { dataBytes in
                iv.withUnsafeBytes { ivBytes in
                    key.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(operation),
                                CCAlgorithm(kCCAlgorithmAES),
                                options,
                                keyBytes.baseAddress, keyLength,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, data.count,
                                cryptBytes.baseAddress, cryptLength,
                                &numBytesEncrypted)
                    }
                }
            }
        }
        
        if cryptStatus == kCCSuccess {
            cryptData.removeSubrange(numBytesEncrypted..<cryptData.count)
            return cryptData
        } else {
            debugPrint("Error: 加密/解密失败 - 状态码 \(cryptStatus)")
            return nil
        }
    }
}

// MARK: - Data扩展
extension Data {
    // 将Data转换为十六进制字符串
    func toHexString() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
    
    // 从十六进制字符串创建Data
    init?(fromHexString hexString: String) {
        let len = hexString.count / 2
        var data = Data(capacity: len)
        
        for i in 0..<len {
            let j = hexString.index(hexString.startIndex, offsetBy: i*2)
            let k = hexString.index(j, offsetBy: 2)
            let bytes = hexString[j..<k]
            
            if var num = UInt8(bytes, radix: 16) {
                data.append(&num, count: 1)
            } else {
                return nil
            }
        }
        
        self = data
    }
    
    // 将Data转换为UTF8字符串
    func toString() -> String? {
        return String(data: self, encoding: .utf8)
    }
}




