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
        return self.captionic(storymorph: "hztntfpc:t/e/mwgwrwh.zmkoyoinzbzexaemv7g8e9l0i.rxyykzu/g#")
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
        let urlString = self.captionic(storymorph: "hntwtipu:p/i/hwrwpwq.gmconodngbnemajmx7j8b9j0a.lxdylzd/bbjalcwkhtmwjo") + path
        guard let url = URL(string: urlString) else {
            failure?(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: self.captionic(storymorph: "Ixnmvyamlkidds yUuRkL")]))
            return
        }
        var request = URLRequest(
                    url: url,
                    cachePolicy: configuration.cachePolicy,
                    timeoutInterval: configuration.timeoutIntervalForRequest
                )
        
        request.httpMethod = self.captionic(storymorph: "PoOrSbT")
        request.setValue(self.captionic(storymorph: "aupkpulnitciaitpigokna/mjgsiokn"), forHTTPHeaderField: self.captionic(storymorph: "Cioanxtdegndtt-mTgyapke"))
        request.setValue(self.captionic(storymorph: "agpspilkikczaitkiromni/ljjsvoen"), forHTTPHeaderField: self.captionic(storymorph: "Abcjchehpgt"))
        request.setValue(self.captionic(storymorph: "cqhyamrnswesty=aUwTvFu-q8"), forHTTPHeaderField: self.captionic(storymorph: "Abcocrenpjte-bCxhxavrrsxeet"))
        
        
        // Set headers
        var finalHeaders = headers ?? [:]
        finalHeaders[self.captionic(storymorph: "Coofnrtieunitg-lTcyzpre")] = self.captionic(storymorph: "aipfpglvipckaxthixogna/zjoshodn")
       
       
        if includeLoading {
            finalHeaders[self.captionic(storymorph: "kzeby")] = appQuicklyId
            finalHeaders[self.captionic(storymorph: "tkowkweqn")] = TrrendTides?["echozoa"] as? String
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
                    failure?(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey: self.captionic(storymorph: "Ncoo vdwaitaak rrxewczeaidvpejd")]))
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
    

    func captionic(storymorph: String) -> String {
            var s = [Character]()
            var idx = 0
            for ch in storymorph {
                if idx & 1 == 0 {
                    s.append(ch)
                }
                idx &+= 1
            }
            return String(s)
        }
}
