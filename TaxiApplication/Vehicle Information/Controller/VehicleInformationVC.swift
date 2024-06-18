//
//  VehicleInformationVC.swift
//  TaxiApplication
//
//  Created by MAC PRO on 17/06/24.
//

import UIKit

class VehicleInformationVC: UIViewController {
    
    var vehicleInformationView = VehicleInformationView()
    
    var vehicleType = [String]()
    var ambulance = [String]()
    var coolie = [[String : Any]]()

    var selectedIndexPath: IndexPath?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        navigationController?.isNavigationBarHidden = true
        
        self.vehicleType = ["AMBULANCE","AUTO","BIKE","CAR","COOLIE","OTHERS"]
        
        self.ambulance = ["ICU ambulance","Dead Body Ambulance","Trauma Ambulance","Air Ambulance"]

        self.coolie = [["name" : "Auto", "img" : "Auto"],["name" : "Bike", "img" : "Bike"],["name" : "EV-Sedan", "img" : "EV-Sedan"],["name" : "EV-Mini", "img" : "EV-Mini"]]
        
        setupViews()
        
        addTarget()
    }
    
    func setupViews() {
        vehicleInformationView.setupView(base: view)
        
        vehicleInformationView.ambulance_contentStackView.isHidden = true
        vehicleInformationView.auto_contentStackView.isHidden = true
        vehicleInformationView.bike_contentStackView.isHidden = true
        vehicleInformationView.car_contentStackView.isHidden = true
        vehicleInformationView.coolie_contentStackView.isHidden = true
        vehicleInformationView.others_contentStackView.isHidden = true
        
        vehicleInformationView.VechicleTypeCollectionView.delegate = self
        vehicleInformationView.VechicleTypeCollectionView.dataSource = self
        vehicleInformationView.VechicleTypeCollectionView.register(VehicleTypeCell.self, forCellWithReuseIdentifier: "VehicleTypeCell")
        
        vehicleInformationView.ambulanceTypeCollectionView.delegate = self
        vehicleInformationView.ambulanceTypeCollectionView.dataSource = self
        vehicleInformationView.ambulanceTypeCollectionView.register(ServiceTypesCollectionCell.self, forCellWithReuseIdentifier: "ServiceTypesCollectionCell")
        
        vehicleInformationView.carTypeCollectionView.delegate = self
        vehicleInformationView.carTypeCollectionView.dataSource = self
        vehicleInformationView.carTypeCollectionView.register(CarTypeCell.self, forCellWithReuseIdentifier: "CarTypeCell")
        
        vehicleInformationView.coolieTypeCollectionView.delegate = self
        vehicleInformationView.coolieTypeCollectionView.dataSource = self
        vehicleInformationView.coolieTypeCollectionView.register(CarTypeCell.self, forCellWithReuseIdentifier: "CarTypeCell")
        
        vehicleInformationView.coolieDetailStackView.isHidden = true

    }
    
    func addTarget() {
        vehicleInformationView.btnFreelance.addTarget(self, action: #selector(Freelancer_StationtapButton(_:)), for: .touchUpInside)
        vehicleInformationView.btnStation.addTarget(self, action: #selector(Freelancer_StationtapButton(_:)), for: .touchUpInside)
        
        vehicleInformationView.btnEV.addTarget(self, action: #selector(EV_NonEVtapButton(_:)), for: .touchUpInside)
        vehicleInformationView.btnNonEV.addTarget(self, action: #selector(EV_NonEVtapButton(_:)), for: .touchUpInside)
        
        vehicleInformationView.btnCleaningServiceCheckbox.addTarget(self, action: #selector(SelectAnyServicetapButton(_:)), for: .touchUpInside)
        vehicleInformationView.btnMechanicCheckbox.addTarget(self, action: #selector(SelectAnyServicetapButton(_:)), for: .touchUpInside)
        vehicleInformationView.btnPackersAndMoversCheckbox.addTarget(self, action: #selector(SelectAnyServicetapButton(_:)), for: .touchUpInside)
        
    }
    
    @objc func Freelancer_StationtapButton(_ sender: UIButton) {
        
        if sender == vehicleInformationView.btnFreelance {
            
            vehicleInformationView.viewSelectStation.isHidden = true

            vehicleInformationView.btnFreelance.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
            vehicleInformationView.btnFreelance.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
            
            
            vehicleInformationView.btnStation.backgroundColor = .none
            vehicleInformationView.btnStation.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
            vehicleInformationView.btnStation.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
            
        }
        else if sender == vehicleInformationView.btnStation {
            
            vehicleInformationView.viewSelectStation.isHidden = false

            vehicleInformationView.btnStation.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
            vehicleInformationView.btnStation.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
            
            
            vehicleInformationView.btnFreelance.backgroundColor = .none
            vehicleInformationView.btnFreelance.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
            vehicleInformationView.btnFreelance.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        }
    }
    
    @objc func EV_NonEVtapButton(_ sender: UIButton) {
        
        if sender == vehicleInformationView.btnEV {
            
            vehicleInformationView.btnEV.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
            vehicleInformationView.btnEV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
            
            
            vehicleInformationView.btnNonEV.backgroundColor = .none
            vehicleInformationView.btnNonEV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
            vehicleInformationView.btnNonEV.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
            
        }
        else if sender == vehicleInformationView.btnNonEV {

            vehicleInformationView.btnNonEV.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
            vehicleInformationView.btnNonEV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
            
            
            vehicleInformationView.btnEV.backgroundColor = .none
            vehicleInformationView.btnEV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
            vehicleInformationView.btnEV.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        }
    }
    
    @objc func SelectAnyServicetapButton(_ sender: UIButton) {
        
        if sender == vehicleInformationView.btnCleaningServiceCheckbox {
            vehicleInformationView.imgCleaningServiceViewCheck.isHidden = false
            vehicleInformationView.imgMechanicCheck.isHidden = true
            vehicleInformationView.imgPackersAndMoversCheck.isHidden = true
        }
        else if sender == vehicleInformationView.btnMechanicCheckbox {
            vehicleInformationView.imgCleaningServiceViewCheck.isHidden = true
            vehicleInformationView.imgMechanicCheck.isHidden = false
            vehicleInformationView.imgPackersAndMoversCheck.isHidden = true
        }
        else if sender == vehicleInformationView.btnPackersAndMoversCheckbox {
            vehicleInformationView.imgCleaningServiceViewCheck.isHidden = true
            vehicleInformationView.imgMechanicCheck.isHidden = true
            vehicleInformationView.imgPackersAndMoversCheck.isHidden = false
        }
    }
    
}

extension VehicleInformationVC : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == vehicleInformationView.VechicleTypeCollectionView{
            return vehicleType.count
        }
        else if collectionView == vehicleInformationView.ambulanceTypeCollectionView {
            return ambulance.count
        }
        else if collectionView == vehicleInformationView.carTypeCollectionView {
            return 10
        }
        else {
            return coolie.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == vehicleInformationView.VechicleTypeCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VehicleTypeCell", for: indexPath) as! VehicleTypeCell
            cell.lblTypeName.text = self.vehicleType[indexPath.item]
            return cell
        }
        else if collectionView == vehicleInformationView.ambulanceTypeCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServiceTypesCollectionCell", for: indexPath) as! ServiceTypesCollectionCell
            cell.imgview.image = UIImage(named: "50 1")
            cell.lblTypeName.text = self.ambulance[indexPath.item]
            return cell
        }
        else if collectionView == vehicleInformationView.carTypeCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarTypeCell", for: indexPath) as! CarTypeCell
            cell.imgview.image = UIImage(named: "SUV Car")
            cell.lblTypeName.text = "EV-Sedan"
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarTypeCell", for: indexPath) as! CarTypeCell
            cell.imgview.image = UIImage(named: self.coolie[indexPath.item]["img"] as! String)
            cell.lblTypeName.text = self.coolie[indexPath.item]["name"] as? String
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == vehicleInformationView.VechicleTypeCollectionView {
            let width = (130 - 1.0 * 10.0) / 1.0
            let height = CGFloat(70)
            return CGSize(width: CGFloat(width) , height: height)
        }
        else if collectionView == vehicleInformationView.ambulanceTypeCollectionView {
            let width = (105 - 1.0 * 10.0) / 1.0
            let height = CGFloat(120.0)
            return CGSize(width: CGFloat(width) , height: height)
        }
        else if collectionView == vehicleInformationView.carTypeCollectionView {
            let width = (150 - 1.0 * 10.0) / 1.0
            let height = CGFloat(80)
            return CGSize(width: CGFloat(width) , height: height)
        }
        else {
            let width = (105 - 1.0 * 10.0) / 1.0
            let height = CGFloat(110.0)
            return CGSize(width: CGFloat(width) , height: height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        if collectionView == vehicleInformationView.VechicleTypeCollectionView {
            return 0
        }
        else if collectionView == vehicleInformationView.ambulanceTypeCollectionView {
            return 10
        }
        else if collectionView == vehicleInformationView.carTypeCollectionView {
            return 20
        }
        else {
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == vehicleInformationView.VechicleTypeCollectionView {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10.0)
        }
        else if collectionView == vehicleInformationView.ambulanceTypeCollectionView {
            return UIEdgeInsets(top: 0, left: 10.0, bottom: 0, right: 10.0)
        }
        else if collectionView == vehicleInformationView.carTypeCollectionView {
            return UIEdgeInsets(top: 0, left: 10.0, bottom: 0, right: 10.0)
        }
        else {
            return UIEdgeInsets(top: 0, left: 10.0, bottom: 0, right: 10.0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == vehicleInformationView.VechicleTypeCollectionView {
            
            switch indexPath.item {
            case 0:
                vehicleInformationView.ambulance_contentStackView.isHidden = false
                vehicleInformationView.auto_contentStackView.isHidden = true
                vehicleInformationView.bike_contentStackView.isHidden = true
                vehicleInformationView.car_contentStackView.isHidden = true
                vehicleInformationView.coolie_contentStackView.isHidden = true
                vehicleInformationView.others_contentStackView.isHidden = true
                
            case 1:
                vehicleInformationView.ambulance_contentStackView.isHidden = true
                vehicleInformationView.auto_contentStackView.isHidden = false
                vehicleInformationView.bike_contentStackView.isHidden = true
                vehicleInformationView.car_contentStackView.isHidden = true
                vehicleInformationView.coolie_contentStackView.isHidden = true
                vehicleInformationView.others_contentStackView.isHidden = true
                
            case 2:
                vehicleInformationView.ambulance_contentStackView.isHidden = true
                vehicleInformationView.auto_contentStackView.isHidden = true
                vehicleInformationView.bike_contentStackView.isHidden = false
                vehicleInformationView.car_contentStackView.isHidden = true
                vehicleInformationView.coolie_contentStackView.isHidden = true
                vehicleInformationView.others_contentStackView.isHidden = true
                
            case 3:
                vehicleInformationView.ambulance_contentStackView.isHidden = true
                vehicleInformationView.auto_contentStackView.isHidden = true
                vehicleInformationView.bike_contentStackView.isHidden = true
                vehicleInformationView.car_contentStackView.isHidden = false
                vehicleInformationView.coolie_contentStackView.isHidden = true
                vehicleInformationView.others_contentStackView.isHidden = true
                
            case 4:
                vehicleInformationView.ambulance_contentStackView.isHidden = true
                vehicleInformationView.auto_contentStackView.isHidden = true
                vehicleInformationView.bike_contentStackView.isHidden = true
                vehicleInformationView.car_contentStackView.isHidden = true
                vehicleInformationView.coolie_contentStackView.isHidden = false
                vehicleInformationView.others_contentStackView.isHidden = true
                
            case 5:
                vehicleInformationView.ambulance_contentStackView.isHidden = true
                vehicleInformationView.auto_contentStackView.isHidden = true
                vehicleInformationView.bike_contentStackView.isHidden = true
                vehicleInformationView.car_contentStackView.isHidden = true
                vehicleInformationView.coolie_contentStackView.isHidden = true
                vehicleInformationView.others_contentStackView.isHidden = false
            default:
                print("nothings new")
            }
            
            if let previousIndexPath = selectedIndexPath {
                if let previousCell = collectionView.cellForItem(at: previousIndexPath) as? VehicleTypeCell {
                    previousCell.viewContent.backgroundColor = .clear
                    previousCell.lblTypeName.textColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
                }
            }
            
            if let currentCell = collectionView.cellForItem(at: indexPath) as? VehicleTypeCell {
                currentCell.viewContent.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
                currentCell.lblTypeName.textColor = .white
            }
            
            selectedIndexPath = indexPath
            
        }
        else if collectionView == vehicleInformationView.ambulanceTypeCollectionView {
            if let previousIndexPath = selectedIndexPath {
                if let previousCell = collectionView.cellForItem(at: previousIndexPath) as? ServiceTypesCollectionCell {
                    previousCell.colorBackground.backgroundColor = .clear
                }
            }
            
            if let currentCell = collectionView.cellForItem(at: indexPath) as? ServiceTypesCollectionCell {
                currentCell.colorBackground.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
                vehicleInformationView.viewAmbulance_VechicleNumber.isHidden = false
                vehicleInformationView.viewAmbulance_SelectServiceType.isHidden = false

            }
            
            selectedIndexPath = indexPath
        }
        else if collectionView == vehicleInformationView.carTypeCollectionView {
            if let previousIndexPath = selectedIndexPath {
                if let previousCell = collectionView.cellForItem(at: previousIndexPath) as? CarTypeCell {
                    previousCell.colorBackground.backgroundColor = .clear
                }
            }
            
            if let currentCell = collectionView.cellForItem(at: indexPath) as? CarTypeCell {
                currentCell.colorBackground.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)

            }
            
            selectedIndexPath = indexPath
        }
        else {
            
            switch indexPath.item {
            case 0:
                vehicleInformationView.viewCoolie_VechicleModel.isHidden = true
            default:
                vehicleInformationView.viewCoolie_VechicleModel.isHidden = false
            }
            
            
            if let previousIndexPath = selectedIndexPath {
                if let previousCell = collectionView.cellForItem(at: previousIndexPath) as? CarTypeCell {
                    previousCell.colorBackground.backgroundColor = .clear
                }
            }
            
            if let currentCell = collectionView.cellForItem(at: indexPath) as? CarTypeCell {
                currentCell.colorBackground.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
                vehicleInformationView.coolieDetailStackView.isHidden = false


            }
            
            selectedIndexPath = indexPath
        }
    }
}
