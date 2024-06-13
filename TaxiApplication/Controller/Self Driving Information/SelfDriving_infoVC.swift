//
//  SelfDriving_infoVC.swift
//  TaxiApplication
//
//  Created by MAC PRO on 13/06/24.
//

import UIKit

class SelfDriving_infoVC: UIViewController {
    
    var selfDriving_infoView = SelfDriving_InfoView()
    
    var selectedIndexPath: IndexPath?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
        
        setupViews()
        
        addTarget()
    }
    
    func setupViews(){
        selfDriving_infoView.setupView(base: view)
        
        selfDriving_infoView.VechicleTypeCollectionView.delegate = self
        selfDriving_infoView.VechicleTypeCollectionView.dataSource = self
        selfDriving_infoView.VechicleTypeCollectionView.register(ServiceTypesCollectionCell.self, forCellWithReuseIdentifier: "ServiceTypesCollectionCell")
        
        selfDriving_infoView.VechicleHintCollectionView.delegate = self
        selfDriving_infoView.VechicleHintCollectionView.dataSource = self
        selfDriving_infoView.VechicleHintCollectionView.register(ServiceTypesCollectionCell.self, forCellWithReuseIdentifier: "ServiceTypesCollectionCell")
    }
    
    func addTarget(){
        selfDriving_infoView.btnBack.addTarget(self, action: #selector(BackButton(_:)), for: .touchUpInside)
        
        selfDriving_infoView.btnEV.addTarget(self, action: #selector(EV_NonEVtapButton(_:)), for: .touchUpInside)
        selfDriving_infoView.btnNon_EV.addTarget(self, action: #selector(EV_NonEVtapButton(_:)), for: .touchUpInside)
        
        selfDriving_infoView.btnGaragePickupCheckbox.addTarget(self, action: #selector(Home_GaragetapButton(_:)), for: .touchUpInside)
        selfDriving_infoView.btnHomePickupCheckbox.addTarget(self, action: #selector(Home_GaragetapButton(_:)), for: .touchUpInside)
        
    }
    
    @objc func BackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func EV_NonEVtapButton(_ sender: UIButton) {
        
        if sender == selfDriving_infoView.btnEV {
            selfDriving_infoView.btnEV.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
            selfDriving_infoView.btnEV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
            selfDriving_infoView.btnEV.layer.borderColor = UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0).cgColor
            
            selfDriving_infoView.btnNon_EV.backgroundColor = .none
            selfDriving_infoView.btnNon_EV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
            selfDriving_infoView.btnNon_EV.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
            
        }
        else if sender == selfDriving_infoView.btnNon_EV {
            
            
            selfDriving_infoView.btnNon_EV.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
            selfDriving_infoView.btnNon_EV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
            selfDriving_infoView.btnNon_EV.layer.borderColor = UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0).cgColor
            
            selfDriving_infoView.btnEV.backgroundColor = .none
            selfDriving_infoView.btnEV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
            selfDriving_infoView.btnEV.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        }
    }
    
    @objc func Home_GaragetapButton(_ sender: UIButton) {
        
        if sender == selfDriving_infoView.btnGaragePickupCheckbox {
            selfDriving_infoView.imgGarageViewCheck.isHidden = false
            selfDriving_infoView.imgHomeViewCheck.isHidden = true
        }
        else if sender == selfDriving_infoView.btnHomePickupCheckbox {
            selfDriving_infoView.imgGarageViewCheck.isHidden = true
            selfDriving_infoView.imgHomeViewCheck.isHidden = false
        }
    }
}

extension SelfDriving_infoVC : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == selfDriving_infoView.VechicleTypeCollectionView{
            return 10
        }
        else{
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == selfDriving_infoView.VechicleTypeCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServiceTypesCollectionCell", for: indexPath) as! ServiceTypesCollectionCell
            cell.imgview.image = UIImage(named: "SUV Car")
            cell.lblTypeName.text = "Ev-SUV"
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServiceTypesCollectionCell", for: indexPath) as! ServiceTypesCollectionCell
            cell.imgview.image = UIImage(named: "50 1")
            cell.lblTypeName.text = "Ev-SUV"
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == selfDriving_infoView.VechicleTypeCollectionView{
            let width = (100 - 1.0 * 10.0) / 1.0
            let height = CGFloat(110.0)
            return CGSize(width: CGFloat(width) , height: height)
        }
        else{
            let width = (100 - 1.0 * 10.0) / 1.0
            let height = CGFloat(100.0)
            return CGSize(width: CGFloat(width) , height: height)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        if collectionView == selfDriving_infoView.VechicleTypeCollectionView{
            return 5
        }
        else{
            return 5
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5.0, bottom: 0, right: 10.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == selfDriving_infoView.VechicleTypeCollectionView{
            
            if let currentCell = collectionView.cellForItem(at: indexPath) as? ServiceTypesCollectionCell {
                currentCell.colorBackground.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
            }
            
            if let previousIndexPath = selectedIndexPath {
                if let previousCell = collectionView.cellForItem(at: previousIndexPath) as? ServiceTypesCollectionCell {
                    previousCell.colorBackground.backgroundColor = .clear
                }
            }
            selectedIndexPath = indexPath
        }
        else{
                if let previousIndexPath = selectedIndexPath {
                    if let previousCell = collectionView.cellForItem(at: previousIndexPath) as? ServiceTypesCollectionCell {
                        previousCell.colorBackground.backgroundColor = .clear
                    }
                }
                
                if let currentCell = collectionView.cellForItem(at: indexPath) as? ServiceTypesCollectionCell {
                    currentCell.colorBackground.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
                    selfDriving_infoView.ModelStackView.isHidden = false
                }
                
                selectedIndexPath = indexPath
        }
    }
}






