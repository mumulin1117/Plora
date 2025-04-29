//
//  SXPRequpour.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/25.
//

import UIKit
//网络请求
class SXPRequpour: NSObject {

}



class DBNSeddingTrkop {
    struct Configuration {
           var timeoutIntervalForRequest: TimeInterval = 30
           var timeoutIntervalForResource: TimeInterval = 60
           var cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy
           var acceptableContentTypes: Set<String> = [
               "text/html",
               "application/json",
               "text/javascript",
               "text/json",
               "text/plain"
           ]
       }
    
    private let configuration: Configuration
    init(configuration: Configuration = Configuration()) {
            let sessionConfig = URLSessionConfiguration.default
            sessionConfig.timeoutIntervalForRequest = configuration.timeoutIntervalForRequest
            sessionConfig.timeoutIntervalForResource = configuration.timeoutIntervalForResource
            
            self.session = URLSession(configuration: sessionConfig)
            self.configuration = configuration
        }
    
    
    static let shared = DBNSeddingTrkop()
    private let session: URLSession
    private let decoder = JSONDecoder()
    
  
    
    let appQuicklyId: String = "99745354"
    
    var appBaseUrl: String {
        return "http://www.moonbeam7890.xyz/backtwo"
    }
    
    var appBaseUrlAVoutWEB: String {
        return "http://www.moonbeam7890.xyz/#"
    }
    
    // MARK: - Core Request Method
    func makeRequest(
        path: String,
        method: String = "POST",
        parameters: [String: Any]? = nil,
        headers: [String: String]? = nil,
        includeLoading: Bool = false,
        success: ((Any?) -> Void)? = nil,
        failure: ((Error) -> Void)? = nil
    ) {
        let urlString = appBaseUrl + path
        guard let url = URL(string: urlString) else {
            failure?(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
            return
        }
        var request = URLRequest(
                    url: url,
                    cachePolicy: configuration.cachePolicy,
                    timeoutInterval: configuration.timeoutIntervalForRequest
                )
        
        request.httpMethod = method
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
        
        
        // Set headers
        var finalHeaders = headers ?? [:]
        finalHeaders["Content-Type"] = "application/json"
       
       
        if includeLoading {
            finalHeaders["key"] = appQuicklyId
            finalHeaders["token"] = loguserMofdal?.echozoa ?? ""
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
                    failure?(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
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
    
    private func decrypt(encoded: String) -> String {
        return String(encoded.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element })
    }
}
