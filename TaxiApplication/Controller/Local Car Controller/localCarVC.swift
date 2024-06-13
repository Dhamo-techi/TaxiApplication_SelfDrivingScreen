//
//  localCarVC.swift
//  TaxiApplication
//
//  Created by MAC PRO on 10/06/24.
//

import UIKit

class localCarVC: UIViewController {

    
    var localCarView = LocalCarView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
    
        setupViews()
    
        addTarget()
    }
    
    
    func setupViews(){
    
        localCarView.setupView(base: view)
        
        localCarView.packageCollectionvw.delegate = self
        localCarView.packageCollectionvw.dataSource = self
        localCarView.packageCollectionvw.register(PackageListCell.self, forCellWithReuseIdentifier: "PackageListCell")
        
        localCarView.VechicleCategoryCollectionView.delegate = self
        localCarView.VechicleCategoryCollectionView.dataSource = self
        localCarView.VechicleCategoryCollectionView.register(VehicleCategoryCollectionViewCell.self, forCellWithReuseIdentifier: "VehicleCategoryCollectionViewCell")
        
        localCarView.BrandCollectionView.delegate = self
        localCarView.BrandCollectionView.dataSource = self
        localCarView.BrandCollectionView.register(VehicleCategoryCollectionViewCell.self, forCellWithReuseIdentifier: "VehicleCategoryCollectionViewCell")
    }
    
    func addTarget(){
        localCarView.btnBack.addTarget(self, action: #selector(BackButton(_:)), for: .touchUpInside)

        localCarView.btnHomeDeliveryCar.addTarget(self, action: #selector(Home_GaragetapButton(_:)), for: .touchUpInside)
        localCarView.btnGaragePickupCar.addTarget(self, action: #selector(Home_GaragetapButton(_:)), for: .touchUpInside)
    
        localCarView.btnEV.addTarget(self, action: #selector(EV_NonEVtapButton(_:)), for: .touchUpInside)
        localCarView.btnNon_EV.addTarget(self, action: #selector(EV_NonEVtapButton(_:)), for: .touchUpInside)
        
    }
    
    @objc func BackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func EV_NonEVtapButton(_ sender: UIButton) {

        if sender == localCarView.btnEV {
            localCarView.btnEV.backgroundColor = UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0)
            localCarView.btnEV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)

            localCarView.btnNon_EV.backgroundColor = .none
            localCarView.btnNon_EV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
        }
        else if sender == localCarView.btnNon_EV {
            localCarView.btnEV.backgroundColor = .none
            localCarView.btnEV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)

            localCarView.btnNon_EV.backgroundColor = UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0)
            localCarView.btnNon_EV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
        }
    }
    
    @objc func Home_GaragetapButton(_ sender: UIButton) {

        if sender == localCarView.btnHomeDeliveryCar {
            localCarView.imgvwHomeDeliveryCar.image = UIImage(named: "homeServiceFill")
            localCarView.imgvwGaragePickupCar.image = UIImage(named: "garagePickup")
            localCarView.viewSelectHomeAddress.isHidden = false


        }
        else if sender == localCarView.btnGaragePickupCar {
            localCarView.imgvwHomeDeliveryCar.image = UIImage(named: "homeService")
            localCarView.imgvwGaragePickupCar.image = UIImage(named: "garagePickupFill")
            localCarView.viewSelectHomeAddress.isHidden = true


        }
    }

}

extension localCarVC : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == localCarView.packageCollectionvw{
            return 4
        }
        else if collectionView == localCarView.VechicleCategoryCollectionView{
            return 10
        }
        else{
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == localCarView.packageCollectionvw{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PackageListCell", for: indexPath) as! PackageListCell
            
            return cell
        }
        else if collectionView == localCarView.VechicleCategoryCollectionView{
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
        
        if collectionView == localCarView.packageCollectionvw{
            let width = (80 - 1.0 * 10.0) / 1.0
            let height = collectionView.bounds.height
            return CGSize(width: CGFloat(width) , height: height)
        }
        else if collectionView == localCarView.VechicleCategoryCollectionView{
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
        
        if collectionView == localCarView.packageCollectionvw{
            return 20
        }
        else if collectionView == localCarView.VechicleCategoryCollectionView{
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
