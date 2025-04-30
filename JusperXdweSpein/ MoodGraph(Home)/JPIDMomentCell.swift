//
//  JPIDMomentCell.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/28.
//

import UIKit

class JPIDMomentCell: UICollectionViewCell {
    lazy var monmentBiag: UIImageView = {
        let iamge = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width - 24, height: 235))
        iamge.contentMode = .scaleAspectFill
        iamge.layer.cornerRadius = 24
        iamge.layer.masksToBounds = true
        return iamge
    }()
    
    lazy var esetilletlbel: UILabel = {
        let contlabel = UILabel.init(frame: CGRect.init(x: 15, y: 182, width: UIScreen.main.bounds.width - 24 - 30, height: 40))
        contlabel.numberOfLines = 0
        contlabel.textAlignment = .left
        contlabel.textColor = UIColor.white
        contlabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        return contlabel
    }()
    
    
    lazy var reorinttrAloi: UIButton = {
        let uitr = UIButton.init(frame: CGRect.init(x: UIScreen.main.bounds.width - 24 - 30 - 44 - 8, y: 60, width: 44, height: 44))
        uitr.setImage(UIImage.init(named: "icon_agreenlaert"), for: .normal)
        
        return uitr
    }()
    
    let faveriteView = UIImageView(image: UIImage.init(named: "laikeing"),highlightedImage: UIImage.init(named: "laikeing_herr"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        faveriteView.frame = CGRect.init(x: UIScreen.main.bounds.width - 24 - 30 - 44 - 8, y: 4, width: 44, height: 44)
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
       
        
        PlogSponsors()
        addCoverLayer()
        StoryBrands()
        
        
        
        contentView.addSubview(faveriteView)
        contentView.addSubview(reorinttrAloi)
        
      
        
    }
    func PlogSponsors() {
        contentView.addSubview(monmentBiag)
       
        
      
    }
    
    func addCoverLayer()  {
        let blackalyer = CAGradientLayer()
        blackalyer.colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor]
        blackalyer.locations = [0, 1]
        blackalyer.frame = CGRect(x: 0, y: 160, width: UIScreen.main.bounds.width - 24, height: 75)
        blackalyer.startPoint = CGPoint(x: 0.5, y: 0.01)
        blackalyer.endPoint = CGPoint(x: 1, y: 1)
        contentView.layer.addSublayer(blackalyer)
        
    }
    
    func StoryBrands() {
        contentView.addSubview(esetilletlbel)
        
        
       
    }
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
}


class JPIDBlueUserCell: UICollectionViewCell {
    lazy var usertBiag: UIImageView = {
        let iamge = UIImageView.init()
        iamge.contentMode = .scaleAspectFill
        iamge.layer.cornerRadius = 28
        iamge.layer.masksToBounds = true
        
        iamge.frame = CGRect(x: 0, y: 0, width: 56, height: 56)
        
        return iamge
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       
        
        
        let iamge = UIImageView.init(image: UIImage.init(named: "mensbane"))
        iamge.frame = CGRect(x: 0, y: 0, width: 56, height: 56)
        iamge.contentMode = .scaleToFill
       
        iamge.layer.masksToBounds = true
        
        
        contentView.addSubview(usertBiag)
        contentView.addSubview(iamge)
        
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
}
