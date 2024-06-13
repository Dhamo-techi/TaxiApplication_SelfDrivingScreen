//
//  HomeView.swift
//  TaxiApplication
//
//  Created by MAC PRO on 10/06/24.
//

import UIKit

class HomeView: UIView {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewType = UIView()

    var lblCarType = UILabel()
    
    var stackviewBtn = UIStackView()

    var viewLocalbtn = UIView()
    
    var imgvwLocalCar = UIImageView()

    var lblLocalCar = UILabel()
    
    var btnLocalCar = UIButton()

    var viewOutstationbtn = UIView()
    
    var imgvwOutstationCar = UIImageView()

    var lblOutstationCar = UILabel()
    
    var btnOutstationCar = UIButton()

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(base baseView: UIView){
    
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .white
        layoutdict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        baseView.backgroundColor = .white
    
        
        viewType.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewType"] = viewType
        viewContent.addSubview(viewType)
    
        lblCarType.translatesAutoresizingMaskIntoConstraints = false
        lblCarType.text = "Select Self Driving Car Type"
        lblCarType.textAlignment = .left
        lblCarType.textColor = .black
        lblCarType.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        layoutdict["lblCarType"] = lblCarType
        viewType.addSubview(lblCarType)

        stackviewBtn.translatesAutoresizingMaskIntoConstraints = false
        stackviewBtn.axis = .horizontal
        stackviewBtn.alignment = .fill
        stackviewBtn.distribution = .fillEqually
        stackviewBtn.spacing = 80
        layoutdict["stackviewBtn"] = stackviewBtn
        viewType.addSubview(stackviewBtn)
        
        viewLocalbtn.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewLocalbtn"] = viewLocalbtn
        stackviewBtn.addArrangedSubview(viewLocalbtn)
        
        imgvwLocalCar.translatesAutoresizingMaskIntoConstraints = false
        imgvwLocalCar.image = UIImage(named: "local")
        imgvwLocalCar.contentMode = .scaleAspectFit
        imgvwLocalCar.layer.cornerRadius = 12
        imgvwLocalCar.layer.masksToBounds = true
        layoutdict["imgvwLocalCar"] = imgvwLocalCar
        viewLocalbtn.addSubview(imgvwLocalCar)
        
        lblLocalCar.translatesAutoresizingMaskIntoConstraints = false
        lblLocalCar.text = "Local"
        lblLocalCar.textAlignment = .center
        lblLocalCar.textColor = .black
        lblLocalCar.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutdict["lblLocalCar"] = lblLocalCar
        viewLocalbtn.addSubview(lblLocalCar)
        
        btnLocalCar.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["btnLocalCar"] = btnLocalCar
        viewLocalbtn.addSubview(btnLocalCar)
        
        

        viewOutstationbtn.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewOutstationbtn"] = viewOutstationbtn
        stackviewBtn.addArrangedSubview(viewOutstationbtn)
        
        imgvwOutstationCar.translatesAutoresizingMaskIntoConstraints = false
        imgvwOutstationCar.image = UIImage(named: "Outstation")
        imgvwOutstationCar.contentMode = .scaleAspectFit
        imgvwOutstationCar.layer.cornerRadius = 12
        imgvwOutstationCar.layer.masksToBounds = true
        layoutdict["imgvwOutstationCar"] = imgvwOutstationCar
        viewOutstationbtn.addSubview(imgvwOutstationCar)
        
        lblOutstationCar.translatesAutoresizingMaskIntoConstraints = false
        lblOutstationCar.text = "Outstation"
        lblOutstationCar.textAlignment = .center
        lblOutstationCar.textColor = .black
        lblOutstationCar.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutdict["lblOutstationCar"] = lblOutstationCar
        viewOutstationbtn.addSubview(lblOutstationCar)
        
        btnOutstationCar.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["btnOutstationCar"] = btnOutstationCar
        viewOutstationbtn.addSubview(btnOutstationCar)

    
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        
        viewType.centerYAnchor.constraint(equalTo: viewContent.centerYAnchor, constant: 0).isActive = true
        viewType.centerXAnchor.constraint(equalTo: viewContent.centerXAnchor, constant: 0).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewType]|", options: [], metrics: nil, views: layoutdict))

        //View Type
        
        viewType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[lblCarType]-10-[stackviewBtn(100)]-10-|", options: [], metrics: nil, views: layoutdict))

        viewType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblCarType]|", options: [], metrics: nil, views: layoutdict))
        viewType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[stackviewBtn]-50-|", options: [], metrics: nil, views: layoutdict))
        
        
        //local cars
        
        viewLocalbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgvwLocalCar]-10-[lblLocalCar(20)]|", options: [], metrics: nil, views: layoutdict))

        viewLocalbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgvwLocalCar]|", options: [], metrics: nil, views: layoutdict))
        viewLocalbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblLocalCar]|", options: [], metrics: nil, views: layoutdict))
        
        viewLocalbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnLocalCar]|", options: [], metrics: nil, views: layoutdict))
        viewLocalbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnLocalCar]|", options: [], metrics: nil, views: layoutdict))
        btnLocalCar.bringSubviewToFront(viewLocalbtn)
        
        //Outstation cars
        
        viewOutstationbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgvwOutstationCar]-10-[lblOutstationCar(20)]|", options: [], metrics: nil, views: layoutdict))

        viewOutstationbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgvwOutstationCar]|", options: [], metrics: nil, views: layoutdict))
        viewOutstationbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblOutstationCar]|", options: [], metrics: nil, views: layoutdict))
        
        viewOutstationbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnOutstationCar]|", options: [], metrics: nil, views: layoutdict))
        viewOutstationbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnOutstationCar]|", options: [], metrics: nil, views: layoutdict))
        btnOutstationCar.bringSubviewToFront(viewOutstationbtn)
    }


}
