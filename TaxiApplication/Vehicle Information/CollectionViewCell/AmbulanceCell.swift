//
//  AmbulanceCell.swift
//  TaxiApplication
//
//  Created by MAC PRO on 17/06/24.
//

import UIKit

class AmbulanceCell: UICollectionViewCell {
    
    let viewContent = UIView()
    let imgview = UIImageView()
    let lblTypeName = UILabel()
    let colorBackground = UIView()
    
    private var layoutDict = [String: AnyObject]()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupViews()
        
    }
    
    func setupViews() {
        
        contentView.isUserInteractionEnabled = true
        
        
        viewContent.backgroundColor = .white
        viewContent.layer.cornerRadius = 8
        //            viewContent.addShadow()
        viewContent.layer.shadowOpacity = 0.5
        viewContent.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewContent.layer.shadowRadius = 3
        layoutDict["viewContent"] = viewContent
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(viewContent)
                
        colorBackground.layer.cornerRadius = 8
        colorBackground.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        layoutDict["colorBackground"] = colorBackground
        colorBackground.translatesAutoresizingMaskIntoConstraints = false
        viewContent.addSubview(colorBackground)
                
        imgview.contentMode = .scaleAspectFit
        imgview.clipsToBounds = true
        layoutDict["imgview"] = imgview
        imgview.translatesAutoresizingMaskIntoConstraints = false
        viewContent.addSubview(imgview)
                
        lblTypeName.numberOfLines = 2
        lblTypeName.lineBreakMode = .byWordWrapping
        lblTypeName.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        lblTypeName.numberOfLines = 0
        lblTypeName.textAlignment = .center
        lblTypeName.textColor = .black
        layoutDict["lblTypeName"] = lblTypeName
        lblTypeName.translatesAutoresizingMaskIntoConstraints = false
        viewContent.addSubview(lblTypeName)
        
        
        
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutDict))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutDict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[imgview(50)]-10-[lblTypeName]", options: [], metrics: nil, views: layoutDict))
        
        imgview.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imgview.centerXAnchor.constraint(equalTo: viewContent.centerXAnchor, constant: 0).isActive = true
                        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-5-[lblTypeName]-5-|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[colorBackground]|", options: [], metrics: nil, views: layoutDict))
    
        
        colorBackground.bottomAnchor.constraint(equalTo: viewContent.safeAreaLayoutGuide.bottomAnchor, constant: -0).isActive = true
        colorBackground.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        
    }
}
