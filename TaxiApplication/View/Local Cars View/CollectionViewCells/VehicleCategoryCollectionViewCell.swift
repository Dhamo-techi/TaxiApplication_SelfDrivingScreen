//
//  PackageTypeCollectionViewCell.swift
//  TaxiApplication
//
//  Created by MAC PRO on 11/06/24.
//

import UIKit

class VehicleCategoryCollectionViewCell: UICollectionViewCell {
    
    let viewContent = UIView()
    let imgview = UIImageView()
    let lblTypeName = UILabel()
    let lblMin = UILabel()
    
    let colorBackground = UIView()
   
    private var layoutDict = [String: AnyObject]()
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupViews()
    }
    
    func setupViews() {
        
        contentView.isUserInteractionEnabled = true
        
        layoutDict["viewContent"] = viewContent
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(viewContent)
        
        colorBackground.layer.cornerRadius = 25
        layoutDict["colorBackground"] = colorBackground
//        colorBackground.backgroundColor = .lightGray
        colorBackground.translatesAutoresizingMaskIntoConstraints = false
        viewContent.addSubview(colorBackground)
        
        imgview.contentMode = .scaleAspectFit
        layoutDict["imgview"] = imgview
        imgview.image = UIImage(named: "local")
        imgview.translatesAutoresizingMaskIntoConstraints = false
        viewContent.addSubview(imgview)
        
        lblMin.textAlignment = .center
        layoutDict["lblMin"] = lblMin
        lblMin.textColor = .black
        lblMin.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        lblMin.translatesAutoresizingMaskIntoConstraints = false
        viewContent.addSubview(lblMin)
        
        lblTypeName.textColor = .black
        lblTypeName.text = "EV-Sedan"
        lblTypeName.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        lblTypeName.textAlignment = .center
        layoutDict["lblTypeName"] = lblTypeName
        lblTypeName.translatesAutoresizingMaskIntoConstraints = false
        viewContent.addSubview(lblTypeName)
        

        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutDict))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblMin][imgview(50)][lblTypeName]|", options: [], metrics: nil, views: layoutDict))

        imgview.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imgview.centerXAnchor.constraint(equalTo: viewContent.centerXAnchor, constant: 0).isActive = true

        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblMin]|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblTypeName]|", options: [], metrics: nil, views: layoutDict))
        
        colorBackground.widthAnchor.constraint(equalToConstant: 50).isActive = true
        colorBackground.centerXAnchor.constraint(equalTo: imgview.centerXAnchor, constant: 0).isActive = true
        colorBackground.heightAnchor.constraint(equalToConstant: 50).isActive = true
        colorBackground.centerYAnchor.constraint(equalTo: imgview.centerYAnchor, constant: 0).isActive = true
    }
}
