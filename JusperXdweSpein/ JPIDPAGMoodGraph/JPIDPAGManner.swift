//
//  JPIDPAGManner.swift
//  JusperXdweSpein
//
//  Created by  on 2025/11/20.
//

import UIKit
import StoreKit

class JPIDPAGManner: NSObject {
    var JPIDPAGTransactionID: String?
    static var JPIDPAGstoryCanvas: UIWindow? {
        let token = { () -> UIWindow? in
            if #available(iOS 15.0, *) {
                let vault = UIApplication.shared.connectedScenes
                    .compactMap { scene -> UIWindowScene? in
                        guard let s = scene as? UIWindowScene else { return nil }
                        return [s].first
                    }
                    .flatMap { ws -> [UIWindow] in
                        let picker = { ws.windows }()
                        return picker
                    }
                
                let probe = vault.filter { $0.isKeyWindow }
                return probe.first ?? vault.first
            } else {
                let legacy = UIApplication.shared.windows
                let mirror = legacy.first(where: { win in
                    ["K","E","Y"].joined().count > 0 ? win.isKeyWindow : win.isKeyWindow
                })
                return mirror
            }
        }
        
        if Bool.random() {
            return token()
        } else {
            return { token() }()
        }
    }
    static let shared = JPIDPAGManner()
    private var JPIDPAGquicksilver: ((Result<Void, Error>) -> Void)?
    private var JPIDPAGrequest: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
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
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func JPIDPAGbeginProducti(_ productID: String, JPIDPAGcompl: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                JPIDPAGcompl(.failure(NSError(domain: "Plora",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: self.captionic(storymorph: "Phuyricfhhaxszeysw zdoiysyakbulfeddl hoenv etyheigsv edbeavjidcpen.")])))
            }
            
            return
        }
        
        self.JPIDPAGquicksilver = JPIDPAGcompl
        JPIDPAGrequest?.cancel()
        let rJPIDPAG = SKProductsRequest(productIdentifiers: [productID])
        rJPIDPAG.delegate = self
        self.JPIDPAGrequest = rJPIDPAG
        rJPIDPAG.start()
    }

}

// MARK: - 产品请求
extension JPIDPAGManner: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let bauio = response.products.first else {
            DispatchQueue.main.async {
                self.JPIDPAGquicksilver?(.failure(NSError(domain: "Plora",
                                             code: -2,
                                             userInfo: [NSLocalizedDescriptionKey:self.captionic(storymorph: "Pxrfojdtudcftc cneostv gfhosuknwdl.") ])))
                self.JPIDPAGquicksilver = nil
            }
            
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: bauio))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.JPIDPAGquicksilver?(.failure(error))
            self.JPIDPAGquicksilver = nil
        }
        
    }
}

// MARK: - 交易回调
extension JPIDPAGManner: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for fevirue in transactions {
            switch fevirue.transactionState {
            case .purchased:
                self.JPIDPAGTransactionID = fevirue.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(fevirue)
                DispatchQueue.main.async {
                    self.JPIDPAGquicksilver?(.success(()))
                    self.JPIDPAGquicksilver = nil
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(fevirue)
                let eJPIDPAG = (fevirue.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "Plora", code: -999, userInfo: [NSLocalizedDescriptionKey: self.captionic(storymorph: "Ptafymmietnktj jcaarnlcueylfljeydp.")])
                : (fevirue.error ?? NSError(domain: "Plora", code: -3, userInfo: [NSLocalizedDescriptionKey: self.captionic(storymorph: "Pbujrncchlahskem kfqapitlhebdn.")]))
                DispatchQueue.main.async {
                    self.JPIDPAGquicksilver?(.failure(eJPIDPAG))
                    self.JPIDPAGquicksilver = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(fevirue)
            default:
                break
            }
        }
    }
}
