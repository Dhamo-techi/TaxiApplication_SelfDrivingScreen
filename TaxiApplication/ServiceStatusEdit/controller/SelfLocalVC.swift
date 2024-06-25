//
//  SelfLocalVC.swift
//  TaxiApplication
//
//  Created by MAC PRO on 25/06/24.
//

import UIKit

class SelfLocalVC: UIViewController {

    var selfLocalView = viewSelfLocal()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
        
        setupviews()
        
        addTarget()
    }
    

    func setupviews(){
        selfLocalView.setupView(base: view)
    }
    
    func addTarget(){
        
    }
}
