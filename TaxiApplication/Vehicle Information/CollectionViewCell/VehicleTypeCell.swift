//
//  VehicleTypeCell.swift
//  TaxiApplication
//
//  Created by MAC PRO on 17/06/24.
//

import UIKit

class VehicleTypeCell: UICollectionViewCell {
    
    let viewContent = UIView()
    let lblTypeName = UILabel()
    
   
    private var layoutDict = [String: AnyObject]()
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupViews()
    }
    
    func setupViews() {
        
        contentView.isUserInteractionEnabled = true
        
        layoutDict["viewContent"] = viewContent
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.layer.cornerRadius = 8
        viewContent.layer.borderWidth =  1
        viewContent.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        self.addSubview(viewContent)

        lblTypeName.textColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
        lblTypeName.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        lblTypeName.textAlignment = .center
        layoutDict["lblTypeName"] = lblTypeName
        lblTypeName.translatesAutoresizingMaskIntoConstraints = false
        viewContent.addSubview(lblTypeName)
        

        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutDict))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutDict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblTypeName]|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblTypeName]|", options: [], metrics: nil, views: layoutDict))
        
        
    }
}
