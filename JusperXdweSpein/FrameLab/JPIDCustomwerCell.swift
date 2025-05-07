//
//  JPIDCustomwerCell.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/29.
//

import UIKit

class JPIDCustomwerCell: UICollectionViewCell {
    lazy var monmentBiag: UIImageView = {
        let iamge = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: 210, height: 218))
        
        iamge.layer.masksToBounds = true
        
        
        iamge.contentMode = .scaleAspectFill
        iamge.layer.cornerRadius = 24
        return iamge
    }()
    
    lazy var esetilletlbel: UILabel = {
        let contlabel = UILabel.init(frame: CGRect.init(x:3, y: 218 + 8, width: UIScreen.main.bounds.width - 24 - 6, height: 46))
        contlabel.numberOfLines = 2
        contlabel.textAlignment = .left
        contlabel.textColor = UIColor.white
        contlabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return contlabel
    }()
    
    lazy var rightntBiagview: UIImageView = {
        let iamge = UIImageView.init(frame: CGRect.init(x: 210 + 6, y: 0, width: UIScreen.main.bounds.width - 24 - 210 - 6, height: 218))
        iamge.contentMode = .scaleAspectFill
        iamge.layer.cornerRadius = 24
        iamge.layer.masksToBounds = true
        return iamge
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
       
        
        PlogSponsors()
        
       
        
       
      
        
    }
    private func PlogSponsors() {
        contentView.addSubview(monmentBiag)
        contentView.addSubview(rightntBiagview)
        contentView.addSubview(esetilletlbel)
      
    }
    
   
    
   
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
}
