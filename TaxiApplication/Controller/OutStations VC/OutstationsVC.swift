//
//  OutstationsVC.swift
//  TaxiApplication
//
//  Created by MAC PRO on 12/06/24.
//

import UIKit

class OutstationsVC: UIViewController {
    
    var outstationView = OutStationsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
        
        setupViews()
        
        addTarget()
    }
    
    
    func setupViews(){
        
        outstationView.setupView(base: view)
        
        
        
        outstationView.VechicleCategoryCollectionView.delegate = self
        outstationView.VechicleCategoryCollectionView.dataSource = self
        outstationView.VechicleCategoryCollectionView.register(VehicleCategoryCollectionViewCell.self, forCellWithReuseIdentifier: "VehicleCategoryCollectionViewCell")
        
        outstationView.BrandCollectionView.delegate = self
        outstationView.BrandCollectionView.dataSource = self
        outstationView.BrandCollectionView.register(VehicleCategoryCollectionViewCell.self, forCellWithReuseIdentifier: "VehicleCategoryCollectionViewCell")
    }
    
    func addTarget(){
        
        outstationView.btnBack.addTarget(self, action: #selector(BackButton(_:)), for: .touchUpInside)
        
        outstationView.btnHomeDeliveryCar.addTarget(self, action: #selector(Home_GaragetapButton(_:)), for: .touchUpInside)
        outstationView.btnGaragePickupCar.addTarget(self, action: #selector(Home_GaragetapButton(_:)), for: .touchUpInside)
        
        outstationView.btnEV.addTarget(self, action: #selector(EV_NonEVtapButton(_:)), for: .touchUpInside)
        outstationView.btnNon_EV.addTarget(self, action: #selector(EV_NonEVtapButton(_:)), for: .touchUpInside)
        
    }
    
    @objc func BackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func EV_NonEVtapButton(_ sender: UIButton) {
        
        if sender == outstationView.btnEV {
            outstationView.btnEV.backgroundColor = UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0)
            outstationView.btnEV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
            
            outstationView.btnNon_EV.backgroundColor = .none
            outstationView.btnNon_EV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
        }
        else if sender == outstationView.btnNon_EV {
            outstationView.btnEV.backgroundColor = .none
            outstationView.btnEV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
            
            outstationView.btnNon_EV.backgroundColor = UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0)
            outstationView.btnNon_EV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
        }
    }
    
    @objc func Home_GaragetapButton(_ sender: UIButton) {
        
        if sender == outstationView.btnHomeDeliveryCar {
            outstationView.imgvwHomeDeliveryCar.image = UIImage(named: "homeServiceFill")
            outstationView.imgvwGaragePickupCar.image = UIImage(named: "garagePickup")
            outstationView.viewSelectHomeAddress.isHidden = false
            
            
        }
        else if sender == outstationView.btnGaragePickupCar {
            outstationView.imgvwHomeDeliveryCar.image = UIImage(named: "homeService")
            outstationView.imgvwGaragePickupCar.image = UIImage(named: "garagePickupFill")
            outstationView.viewSelectHomeAddress.isHidden = true
            
            
        }
    }
}


extension OutstationsVC : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == outstationView.VechicleCategoryCollectionView{
            return 10
        }
        else{
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == outstationView.VechicleCategoryCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VehicleCategoryCollectionViewCell", for: indexPath) as! VehicleCategoryCollectionViewCell
            
            cell.colorBackground.backgroundColor = .lightGray
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VehicleCategoryCollectionViewCell", for: indexPath) as! VehicleCategoryCollectionViewCell
            
            cell.colorBackground.backgroundColor = .orange
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == outstationView.VechicleCategoryCollectionView{
            let width = (100 - 1.0 * 10.0) / 1.0
            let height = collectionView.bounds.height
            return CGSize(width: CGFloat(width) , height: height)
        }
        else{
            let width = (100 - 1.0 * 10.0) / 1.0
            let height = collectionView.bounds.height
            return CGSize(width: CGFloat(width) , height: height)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        if collectionView == outstationView.VechicleCategoryCollectionView{
            return 10
        }
        else{
            return 10
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10.0)
    }
    
}
