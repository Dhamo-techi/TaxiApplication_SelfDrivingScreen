//
//  homeVC.swift
//  TaxiApplication
//
//  Created by MAC PRO on 10/06/24.
//

import UIKit

class homeVC: UIViewController {

    var homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
        
        setupViews()
        
        addTarget()
    }
    

    func setupViews(){
        
        homeView.setupView(base: view)
    }

    func addTarget(){
        
        homeView.btnLocalCar.addTarget(self, action: #selector(btnLocalCarTapped(_:)), for: .touchUpInside)
        
        homeView.btnOutstationCar.addTarget(self, action: #selector(btnOutstationCarTapped(_:)), for: .touchUpInside)

    }
    
    @objc func btnLocalCarTapped(_ sender: UIButton) {
        
        let vc = localCarVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func btnOutstationCarTapped(_ sender: UIButton) {
        let vc = OutstationsVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
