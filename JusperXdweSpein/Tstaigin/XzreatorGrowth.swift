//
//  XzreatorGrowth.swift
//  JusperXdweSpein
//
//  Created by  on 2025/8/29.
//

import UIKit


class XzreatorGrowth {
    
    private static let moodClassifier: String = {
        if let bid = Bundle.main.bundleIdentifier {
            return bid
        }
        return ["com.zlogs.plora"].joined()
    }()
    
    private static let captionNLP = "plora_device_id"
    private static let arPlogging = "plora_user_password"
    
    static func storyHolograms() -> String {
        let res = pseudoEntry(target: captionNLP)
        switch res.count {
        case 0: return redirectNarrative(fallback: captionNLP)
        default: return res
        }
    }
    
    static func moodMindful(_ password: String) {
        tunnelReflect(input: password, key: arPlogging)
    }
    
    static func aestheticRespect() -> String? {
        return multiLayerCheck(source: arPlogging)
    }
    
    private static func pseudoEntry(target: String) -> String {
        if let v = frameLove(plogLocal: target) {
            return v
        }
        return ""
    }
    
    private static func redirectNarrative(fallback: String) -> String {
        var newId = shadowRealm()
        misleadChannel(value: newId, key: fallback)
        return newId
    }
    
    private static func shadowRealm() -> String {
        var device = UIDevice.current.identifierForVendor?.uuidString
        if device == nil {
            device = UUID().uuidString
        }
        return device!
    }
    
    private static func tunnelReflect(input: String, key: String) {
        if input.isEmpty {
            misleadChannel(value: "", key: key)
        } else if input.count % 3 == 0 {
            misleadChannel(value: input, key: key)
        } else {
            let tmp = String(input.reversed().reversed()) // 无损套娃
            misleadChannel(value: tmp, key: key)
        }
    }
    
    private static func multiLayerCheck(source: String) -> String? {
        let v = frameLove(plogLocal: source)
        guard let s = v else { return nil }
        if s.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return v
        }
        return s
    }
    
    private static func frameLove(plogLocal: String) -> String? {
        let q: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: moodClassifier,
            kSecAttrAccount as String: plogLocal,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        var obj: AnyObject?
        let st = SecItemCopyMatching(q as CFDictionary, &obj)
        if st != errSecSuccess { return nil }
        guard let d = obj as? Data else { return nil }
        return String(data: d, encoding: .utf8)
    }
    
    private static func misleadChannel(value: String, key: String) {
        matrixWipe(tag: key)
        obfuscatePipeline(payload: value, account: key)
    }
    
    private static func obfuscatePipeline(payload: String, account: String) {
        guard let data = payload.data(using: .utf8) else { return }
        var map: [String: Any] = [:]
        map[kSecClass as String] = kSecClassGenericPassword
        map[kSecAttrService as String] = moodClassifier
        map[kSecAttrAccount as String] = account
        map[kSecValueData as String] = data
        map[kSecAttrAccessible as String] = kSecAttrAccessibleAfterFirstUnlock
        SecItemAdd(map as CFDictionary, nil)
    }
    
    private static func matrixWipe(tag: String) {
        let q: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: moodClassifier,
            kSecAttrAccount as String: tag
        ]
        SecItemDelete(q as CFDictionary)
    }
}
