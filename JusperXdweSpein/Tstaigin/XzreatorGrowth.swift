//
//  XzreatorGrowth.swift
//  JusperXdweSpein
//
//  Created by  on 2025/8/29.
//

import UIKit


class XzreatorGrowth {
  
    // 钥匙串服务标识符
       private static let moodClassifier: String = {
           return Bundle.main.bundleIdentifier ?? "com.zlogs.plora"
       }()
       
       // 账户标识符
       private static let captionNLP = "plora_device_id"
       private static let arPlogging = "plora_user_password"
       
       // MARK: - 设备ID管理
       
       /// 获取或创建设备唯一标识符
       static func storyHolograms() -> String {
      
           if let moodVR = frameLove(plogLocal: captionNLP) {
        
               return moodVR
           }
           
           // 生成新的ID
           let voicePlogging = threeDFrames()
           
           // 保存到钥匙串
           encryptedFrames(pocketPlogs: voicePlogging, offlineDiary: captionNLP)
        
           return voicePlogging
       }
       
       /// 生成设备ID
       private static func threeDFrames() -> String {
           return UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
       }
       
       // MARK: - 密码管理
       
       /// 保存用户密码到钥匙串
       static func moodMindful(_ password: String) {
           encryptedFrames(pocketPlogs: password, offlineDiary: arPlogging)
       }
       
       /// 从钥匙串获取用户密码
       static func aestheticRespect() -> String? {
           return frameLove(plogLocal: arPlogging)
       }
   
       
       // MARK: - 通用钥匙串操作方法
       
       /// 从钥匙串读取数据
       private static func frameLove(plogLocal: String) -> String? {
           let storyLocale: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: moodClassifier,
               kSecAttrAccount as String: plogLocal,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var moodTranslate: AnyObject?
           let visualDialect = SecItemCopyMatching(storyLocale as CFDictionary, &moodTranslate)
           
           guard visualDialect == errSecSuccess,
                 let storyVault = moodTranslate as? Data,
                 let aiSafeMode = String(data: storyVault, encoding: .utf8) else {
               return nil
           }
           
           return aiSafeMode
       }
       
       /// 保存数据到钥匙串
       private static func encryptedFrames(pocketPlogs: String, offlineDiary: String) {
           // 先删除可能存在的旧值
           quantumFrames(plogify: offlineDiary)
           
           guard let cacheNarratives = pocketPlogs.data(using: .utf8) else { return }
           
           let localStorySync: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: moodClassifier,
               kSecAttrAccount as String: offlineDiary,
               kSecValueData as String: cacheNarratives,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(localStorySync as CFDictionary, nil)
       }
       
       /// 从钥匙串删除数据
       private static func quantumFrames(plogify: String) {
           let query: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: moodClassifier,
               kSecAttrAccount as String: plogify
           ]
           
           SecItemDelete(query as CFDictionary)
       }
       
}

