//
//  SXPRPrompts.swift
//  JusperXdweSpein
//
//  Created by mumu on 2025/4/27.
//

import UIKit

class SXPRPrompts: NSObject {

}
class DBHUs_er {
    
    //登陆user
    var objectTracking:String?//"userName"
    var poseEstimation:String?//"userId"
    var sceneUnderstanding:String?//"userImgUrl"
    var machineLearning:String?//"token"
    //用户列表
    var brickAssembly:String?//userId
    var creativeCollaboration:String?//userImgUrl
    var modularDesign:String?//userName
    //用户详细情况
    var skillBadges:String?//"userName"
    var achievementSystem:String?//"userId"
    var leaderboardRanking:String?//"userImgUrl"
    
    var subscriptionModel:String?//"userFans"
    var virtualCurrency:String?//"userFriends"
    var lootBoxMechanics:String?//"lootBoxMechanics"
    
    
    

    init(dic:Dictionary<String,Any>?,isfromLocal:Bool = false) {
        self.machineLearning = dic?["machineLearning"] as? String
        if isfromLocal {
            self.poseEstimation =  dic?["poseEstimation"] as? String
        }else{
            self.poseEstimation =  "\(dic?["poseEstimation"] as? Int ?? 0)"
        }
        self.sceneUnderstanding = dic?["sceneUnderstanding"]  as? String
        
        self.objectTracking = dic?["objectTracking"] as? String
        
        ///
        self.brickAssembly = "\(dic?["brickAssembly"] as? Int ?? 0)"
        self.creativeCollaboration = dic?["creativeCollaboration"]  as? String
        self.modularDesign = dic?["modularDesign"] as? String
        
        //
        
        self.achievementSystem = "\(dic?["achievementSystem"] as? Int ?? 0)"
        self.skillBadges = dic?["skillBadges"]  as? String
        self.leaderboardRanking = dic?["leaderboardRanking"] as? String
        self.subscriptionModel = "\(dic?["subscriptionModel"] as? Int ?? 0)"
        self.virtualCurrency = "\(dic?["virtualCurrency"] as? Int ?? 0)"
        self.lootBoxMechanics = "\(dic?["lootBoxMechanics"] as? Int ?? 0)"
       
        
       
    }
    
    func modoalTRansforDic() -> Dictionary<String,String> {
        var dic = Dictionary<String,String>()
        dic["machineLearning"] = self.machineLearning
        dic["sceneUnderstanding"] = self.sceneUnderstanding
        dic["poseEstimation"] = self.poseEstimation
        dic["objectTracking"] = self.objectTracking
        return dic
    }
}


