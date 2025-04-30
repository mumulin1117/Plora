//
//  SXPRequpour.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/25.
//
import AVFoundation
import UIKit
//网络请求
struct PloraStoryContent {
    let mediaType: PloraMediaType
    let assets: [URL]?
    let caption: String?
  
}
class SXPRequpour {
    struct Configuration {
           var timeoutIntervalForRequest: TimeInterval = 30
           var timeoutIntervalForResource: TimeInterval = 60
           var cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy

       }
    
    private let configuration: Configuration
    init(configuration: Configuration = Configuration()) {
            let sessionConfig = URLSessionConfiguration.default
            sessionConfig.timeoutIntervalForRequest = configuration.timeoutIntervalForRequest
            sessionConfig.timeoutIntervalForResource = configuration.timeoutIntervalForResource
            
            self.session = URLSession(configuration: sessionConfig)
            self.configuration = configuration
        }
    
    
    static let shared = SXPRequpour()
    private let session: URLSession
    private let decoder = JSONDecoder()
    
  
    
    let appQuicklyId: String = "99745354"
    
 
    
    var appBaseUrlAVoutWEB: String {
        return self.decrypt(encoded: "hztntfpc:t/e/mwgwrwh.zmkoyoinzbzexaemv7g8e9l0i.rxyykzu/g#")
    }
    
    // MARK: - Core Request Method
    func makeRequest(
        path: String,
        parameters: [String: Any]? = nil,
        headers: [String: String]? = nil,
        includeLoading: Bool = false,
        success: ((Any?) -> Void)? = nil,
        failure: ((Error) -> Void)? = nil
    ) {
        let urlString = self.decrypt(encoded: "hntwtipu:p/i/hwrwpwq.gmconodngbnemajmx7j8b9j0a.lxdylzd/bbjalcwkhtmwjo") + path
        guard let url = URL(string: urlString) else {
            failure?(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: self.decrypt(encoded: "Ixnmvyamlkidds yUuRkL")]))
            return
        }
        var request = URLRequest(
                    url: url,
                    cachePolicy: configuration.cachePolicy,
                    timeoutInterval: configuration.timeoutIntervalForRequest
                )
        
        request.httpMethod = self.decrypt(encoded: "PoOrSbT")
        request.setValue(self.decrypt(encoded: "aupkpulnitciaitpigokna/mjgsiokn"), forHTTPHeaderField: self.decrypt(encoded: "Cioanxtdegndtt-mTgyapke"))
        request.setValue(self.decrypt(encoded: "agpspilkikczaitkiromni/ljjsvoen"), forHTTPHeaderField: self.decrypt(encoded: "Abcjchehpgt"))
        request.setValue(self.decrypt(encoded: "cqhyamrnswesty=aUwTvFu-q8"), forHTTPHeaderField: self.decrypt(encoded: "Abcocrenpjte-bCxhxavrrsxeet"))
        
        
        // Set headers
        var finalHeaders = headers ?? [:]
        finalHeaders[self.decrypt(encoded: "Coofnrtieunitg-lTcyzpre")] = self.decrypt(encoded: "aipfpglvipckaxthixogna/zjoshodn")
       
       
        if includeLoading {
            finalHeaders[self.decrypt(encoded: "kzeby")] = appQuicklyId
            finalHeaders[self.decrypt(encoded: "tkowkweqn")] = currentuserloginINfomation?["echozoa"] as? String
        }
        
        for (key, value) in finalHeaders {
            request.setValue(value, forHTTPHeaderField: key)
        }
        
        if let parameters = parameters {
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                failure?(error)
                return
            }
        }
        
        let task = session.dataTask(with: request) { data, response, error in
            if let error = error {
                DispatchQueue.main.async {
                    failure?(error)
                }
                return
            }
        
            
            guard let data = data else {
                DispatchQueue.main.async {
                    failure?(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey: self.decrypt(encoded: "Ncoo vdwaitaak rrxewczeaidvpejd")]))
                }
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [.allowFragments, .mutableContainers])
                DispatchQueue.main.async {
                    success?(json)
                }
            } catch {
                DispatchQueue.main.async {
                    failure?(error)
                }
            }
        }
        
        task.resume()
    }
    
    func decrypt(encoded: String) -> String {
        return String(encoded.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element })
    }
}
