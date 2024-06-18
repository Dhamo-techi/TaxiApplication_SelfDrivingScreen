//
//  VehicleInformationView.swift
//  TaxiApplication
//
//  Created by MAC PRO on 17/06/24.
//

import UIKit

class VehicleInformationView: UIView {
    
    var layoutDict = [String : Any]()
    
    
    
    var viewContent = UIView()
    
    var viewBack_title = UIView()
    var btnBack = UIButton()
    
    var scrollView = UIScrollView()
    
    var viewVehicleInfo = UIView()
    let VechicleTypeCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    var lblTitle = UILabel()
    var viewVehicleInfoContentBase = UIStackView()
    
    var ambulance_contentStackView = UIStackView()
    let ambulanceTypeCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    var viewAmbulance_VechicleNumber = UIView()
    var lblAmbulance_VechicleNumber = UILabel()
    let txtAmbulance_VechicleNumber = UITextField()
    
    var viewAmbulance_SelectServiceType = UIView()
    var lblAmbulance_SelectServiceType = UILabel()
    let txtAmbulance_SelectServiceType = UITextField()
    
    
    
    var auto_contentStackView = UIStackView()
    
    var viewFreelance_station = UIView()
    var lblSelectCategoryTitle = UILabel()
    var freelance_stationStackView = UIStackView()
    var btnFreelance = UIButton()
    var btnStation = UIButton()
    
    var viewSelectStation = UIView()
    var lblSelectStation = UILabel()
    let txtSelectStation = RJKPickerTextField()
    
    var viewAuto_VechicleNumber = UIView()
    var lblAuto_VechicleNumber = UILabel()
    let txtAuto_VechicleNumber = UITextField()
    
    var viewAuto_SelectServiceType = UIView()
    var lblAuto_SelectServiceType = UILabel()
    let txtAuto_SelectServiceType = UITextField()
    
    var bike_contentStackView = UIStackView()
    
    var viewBike_VechicleModel = UIView()
    var lblBike_VechicleModel = UILabel()
    let txtBike_VechicleModel = UITextField()

    var viewBike_VechicleNumber = UIView()
    var lblBike_VechicleNumber = UILabel()
    let txtBike_VechicleNumber = UITextField()
    
    var viewBike_SelectServiceType = UIView()
    var lblBike_SelectServiceType = UILabel()
    let txtBike_SelectServiceType = UITextField()
    
    var car_contentStackView = UIStackView()
    
    var viewEV_NonEV = UIView()
    var lblEV_NonEVSelectCategoryTitle = UILabel()
    var EV_NonEVStackView = UIStackView()
    var btnEV = UIButton()
    var btnNonEV = UIButton()
    
    let carTypeCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    var viewCar_VechicleModel = UIView()
    var lblCar_VechicleModel = UILabel()
    let txtCar_VechicleModel = UITextField()

    var viewCar_VechicleNumber = UIView()
    var lblCar_VechicleNumber = UILabel()
    let txtCar_VechicleNumber = UITextField()
    
    var viewCar_SelectServiceType = UIView()
    var lblCar_SelectServiceType = UILabel()
    let txtCar_SelectServiceType = RJKPickerTextField()
    
    var coolie_contentStackView = UIStackView()
    let coolieTypeCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    var coolieDetailStackView = UIStackView()
    var viewCoolie_VechicleModel = UIView()
    var lblCoolie_VechicleModel = UILabel()
    let txtCoolie_VechicleModel = UITextField()

    var viewCoolie_VechicleNumber = UIView()
    var lblCoolie_VechicleNumber = UILabel()
    let txtCoolie_VechicleNumber = UITextField()
    
    var viewCoolie_SelectServiceType = UIView()
    var lblCoolie_SelectServiceType = UILabel()
    let txtCoolie_SelectServiceType = UITextField()
    
    var viewCoolie_Size = UIView()
    var lblCoolie_Size = UILabel()
    let txtCoolie_Size = UITextField()
    
    var others_contentStackView = UIStackView()
    var viewSelectAny_Service = UIView()
    var lblSelectAny_Service = UILabel()
    var stackSelectAnyService = UIStackView()
    
    var viewCleaningService = UIView()
    var viewCleaning_Checkbox = UIView()
    let imgCleaningServiceViewCheck = UIImageView()
    var lblCleaningService_CheckboxTitle = UILabel()
    var btnCleaningServiceCheckbox = UIButton()
    
    var viewSelectMechanic = UIView()
    var viewMechanic_Checkbox = UIView()
    let imgMechanicCheck = UIImageView()
    var lblMechanic_CheckboxTitle = UILabel()
    var btnMechanicCheckbox = UIButton()
    
    var viewSelectPackersAndMovers = UIView()
    var viewPackersAndMovers_Checkbox = UIView()
    let imgPackersAndMoversCheck = UIImageView()
    var lblPackersAndMovers_CheckboxTitle = UILabel()
    var btnPackersAndMoversCheckbox = UIButton()
    
    var viewServiceAvailabilityLocation = UIView()
    var lblServiceAvailabilityLocation = UILabel()
    let txtServiceAvailabilityLocation = UITextField()
    
    var viewSubmitBtn = UIView()
    var btnSubmit = UIButton()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(base baseView: UIView){
        
        
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .white
        layoutDict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        baseView.backgroundColor = .white
        
        viewBack_title.translatesAutoresizingMaskIntoConstraints = false
        viewBack_title.backgroundColor = .white
        layoutDict["viewBack_title"] = viewBack_title
        viewContent.addSubview(viewBack_title)
        
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        let backImage = UIImage(named: "rightCh")
        btnBack.setImage(backImage, for: .normal)
        //        btnBack.addShadow()
        layoutDict["btnBack"] = btnBack
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        btnBack.layer.cornerRadius = 20
        layoutDict["btnBack"] = btnBack
        viewBack_title.addSubview(btnBack)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        layoutDict["scrollView"] = scrollView
        viewContent.addSubview(scrollView)
        
        viewVehicleInfo.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVehicleInfo"] = viewVehicleInfo
        scrollView.addSubview(viewVehicleInfo)
        
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.text = "Vehicle information"
        lblTitle.textAlignment = .left
        lblTitle.numberOfLines = 0
        lblTitle.textColor = .black
        lblTitle.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutDict["lblTitle"] = lblTitle
        viewVehicleInfo.addSubview(lblTitle)
        
        let VehicleTypeLayout = UICollectionViewFlowLayout()
        VehicleTypeLayout.scrollDirection = .horizontal
        VechicleTypeCollectionView.collectionViewLayout = VehicleTypeLayout
        VechicleTypeCollectionView.backgroundColor = .clear
        VechicleTypeCollectionView.showsHorizontalScrollIndicator = false
        layoutDict["VechicleTypeCollectionView"] = VechicleTypeCollectionView
        VechicleTypeCollectionView.translatesAutoresizingMaskIntoConstraints = false
        viewVehicleInfo.addSubview(VechicleTypeCollectionView)
        
        viewVehicleInfoContentBase.translatesAutoresizingMaskIntoConstraints = false
        viewVehicleInfoContentBase.alignment = .fill
        viewVehicleInfoContentBase.axis = .vertical
        layoutDict["viewVehicleInfoContentBase"] = viewVehicleInfoContentBase
        viewVehicleInfo.addSubview(viewVehicleInfoContentBase)
        
        //--------> Ambulance StackView
        
        ambulance_contentStackView.translatesAutoresizingMaskIntoConstraints = false
        ambulance_contentStackView.alignment = .fill
        ambulance_contentStackView.spacing = 20
        ambulance_contentStackView.axis = .vertical
        layoutDict["ambulance_contentStackView"] = ambulance_contentStackView
        viewVehicleInfoContentBase.addArrangedSubview(ambulance_contentStackView)
        
        let ambulanceTypeLayout = UICollectionViewFlowLayout()
        ambulanceTypeLayout.scrollDirection = .horizontal
        ambulanceTypeCollectionView.translatesAutoresizingMaskIntoConstraints = false
        ambulanceTypeCollectionView.collectionViewLayout = ambulanceTypeLayout
        ambulanceTypeCollectionView.backgroundColor = .clear
        ambulanceTypeCollectionView.showsHorizontalScrollIndicator = false
        layoutDict["ambulanceTypeCollectionView"] = ambulanceTypeCollectionView
        ambulance_contentStackView.addArrangedSubview(ambulanceTypeCollectionView)
        
        viewAmbulance_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        viewAmbulance_VechicleNumber.isHidden = true
        layoutDict["viewAmbulance_VechicleNumber"] = viewAmbulance_VechicleNumber
        ambulance_contentStackView.addArrangedSubview(viewAmbulance_VechicleNumber)
        
        lblAmbulance_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        lblAmbulance_VechicleNumber.text = "Enter the Vehicle Number"
        lblAmbulance_VechicleNumber.textAlignment = .left
        lblAmbulance_VechicleNumber.textColor = .black
        lblAmbulance_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblAmbulance_VechicleNumber"] =  lblAmbulance_VechicleNumber
        viewAmbulance_VechicleNumber.addSubview( lblAmbulance_VechicleNumber)
        
        
        txtAmbulance_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        let VehicleNumberleftViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtAmbulance_VechicleNumber.leftViewMode = .always
        txtAmbulance_VechicleNumber.leftView = VehicleNumberleftViewContainer
        txtAmbulance_VechicleNumber.placeholder = "Enter the Vehicle number"
        txtAmbulance_VechicleNumber.textColor = .black
        txtAmbulance_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtAmbulance_VechicleNumber.layer.cornerRadius = 12.0
        txtAmbulance_VechicleNumber.layer.borderWidth = 1
        txtAmbulance_VechicleNumber.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtAmbulance_VechicleNumber"] = txtAmbulance_VechicleNumber
        viewAmbulance_VechicleNumber.addSubview(txtAmbulance_VechicleNumber)
        
        
        viewAmbulance_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        viewAmbulance_SelectServiceType.isHidden = true
        layoutDict["viewAmbulance_SelectServiceType"] = viewAmbulance_SelectServiceType
        ambulance_contentStackView.addArrangedSubview(viewAmbulance_SelectServiceType)
        
        lblAmbulance_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        lblAmbulance_SelectServiceType.text = "Select Service Types"
        lblAmbulance_SelectServiceType.textAlignment = .left
        lblAmbulance_SelectServiceType.textColor = .black
        lblAmbulance_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblAmbulance_SelectServiceType"] =  lblAmbulance_SelectServiceType
        viewAmbulance_SelectServiceType.addSubview( lblAmbulance_SelectServiceType)
        
        txtAmbulance_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        txtAmbulance_SelectServiceType.leftViewMode = .always
        let ServiceTypes_leftViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtAmbulance_SelectServiceType.leftViewMode = .always
        txtAmbulance_SelectServiceType.leftView = ServiceTypes_leftViewContainer
        txtAmbulance_SelectServiceType.placeholder = "Select Service Types"
        txtAmbulance_SelectServiceType.textColor = .black
        txtAmbulance_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtAmbulance_SelectServiceType.layer.cornerRadius = 12.0
        txtAmbulance_SelectServiceType.layer.borderWidth = 1
        txtAmbulance_SelectServiceType.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtAmbulance_SelectServiceType"] = txtAmbulance_SelectServiceType
        viewAmbulance_SelectServiceType.addSubview(txtAmbulance_SelectServiceType)
        
        
        //--------> Auto StackView
        
        auto_contentStackView.translatesAutoresizingMaskIntoConstraints = false
        auto_contentStackView.alignment = .fill
        auto_contentStackView.spacing = 20
        auto_contentStackView.axis = .vertical
        layoutDict["auto_contentStackView"] = auto_contentStackView
        viewVehicleInfoContentBase.addArrangedSubview(auto_contentStackView)
        
        viewFreelance_station.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewFreelance_station"] = viewFreelance_station
        auto_contentStackView.addArrangedSubview(viewFreelance_station)
        
        lblSelectCategoryTitle.translatesAutoresizingMaskIntoConstraints = false
        lblSelectCategoryTitle.text = "Select Category"
        lblSelectCategoryTitle.numberOfLines = 0
        lblSelectCategoryTitle.textAlignment = .left
        lblSelectCategoryTitle.textColor = .black
        lblSelectCategoryTitle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblSelectCategoryTitle"] = lblSelectCategoryTitle
        viewFreelance_station.addSubview(lblSelectCategoryTitle)
        
        
        freelance_stationStackView.translatesAutoresizingMaskIntoConstraints = false
        freelance_stationStackView.axis = .horizontal
        freelance_stationStackView.alignment = .fill
        freelance_stationStackView.distribution = .fillEqually
        freelance_stationStackView.spacing = 5
        layoutDict["freelance_stationStackView"] = freelance_stationStackView
        viewFreelance_station.addSubview(freelance_stationStackView)
        
        btnFreelance.translatesAutoresizingMaskIntoConstraints = false
        btnFreelance.setTitle("Freelancer", for: .normal)
        btnFreelance.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
        btnFreelance.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnFreelance.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
        btnFreelance.layer.cornerRadius =  8
        btnFreelance.layer.borderWidth =  1
        btnFreelance.layer.borderColor = UIColor.clear.cgColor
        layoutDict["btnFreelance"] = btnFreelance
        freelance_stationStackView.addArrangedSubview(btnFreelance)
        
        btnStation.translatesAutoresizingMaskIntoConstraints = false
        btnStation.setTitle("Station", for: .normal)
        btnStation.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
        btnStation.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnStation.backgroundColor = .none
        btnStation.layer.cornerRadius = 8
        btnStation.layer.borderWidth =  1
        btnStation.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        layoutDict["btnStation"] = btnStation
        freelance_stationStackView.addArrangedSubview(btnStation)
        
        // ---- Select Station
        
        viewSelectStation.isHidden = true
        viewSelectStation.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectStation"] = viewSelectStation
        auto_contentStackView.addArrangedSubview(viewSelectStation)
        
        lblSelectStation.translatesAutoresizingMaskIntoConstraints = false
        lblSelectStation.text = "Select Station"
        lblSelectStation.textAlignment = .left
        lblSelectStation.textColor = .black
        lblSelectStation.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblSelectStation"] =  lblSelectStation
        viewSelectStation.addSubview( lblSelectStation)
        
        txtSelectStation.addDropDown(text: "sdsdsd", image: "dropdown")
        txtSelectStation.changeTextFieldType(.pickerView)
        txtSelectStation.translatesAutoresizingMaskIntoConstraints = false
        txtSelectStation.placeholder = "Select Station"
        txtSelectStation.textColor = .black
        txtSelectStation.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtSelectStation.layer.cornerRadius = 12.0
        txtSelectStation.layer.borderWidth = 1
        txtSelectStation.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtSelectStation"] = txtSelectStation
        viewSelectStation.addSubview(txtSelectStation)
        
        //-------> Vehicle number for Auto
        viewAuto_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewAuto_VechicleNumber"] = viewAuto_VechicleNumber
        auto_contentStackView.addArrangedSubview(viewAuto_VechicleNumber)
        
        lblAuto_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        lblAuto_VechicleNumber.text = "Enter the Vehicle Number"
        lblAuto_VechicleNumber.textAlignment = .left
        lblAuto_VechicleNumber.textColor = .black
        lblAuto_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblAuto_VechicleNumber"] =  lblAuto_VechicleNumber
        viewAuto_VechicleNumber.addSubview( lblAuto_VechicleNumber)
        
        
        txtAuto_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        let AutoVh_numberView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtAuto_VechicleNumber.leftViewMode = .always
        txtAuto_VechicleNumber.leftView = AutoVh_numberView
        txtAuto_VechicleNumber.placeholder = "Enter the Vehicle number"
        txtAuto_VechicleNumber.textColor = .black
        txtAuto_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtAuto_VechicleNumber.layer.cornerRadius = 12.0
        txtAuto_VechicleNumber.layer.borderWidth = 1
        txtAuto_VechicleNumber.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtAuto_VechicleNumber"] = txtAuto_VechicleNumber
        viewAuto_VechicleNumber.addSubview(txtAuto_VechicleNumber)
        
        
        viewAuto_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewAuto_SelectServiceType"] = viewAuto_SelectServiceType
        auto_contentStackView.addArrangedSubview(viewAuto_SelectServiceType)
        
        lblAuto_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        lblAuto_SelectServiceType.text = "Select Service Types"
        lblAuto_SelectServiceType.textAlignment = .left
        lblAuto_SelectServiceType.textColor = .black
        lblAuto_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblAuto_SelectServiceType"] =  lblAuto_SelectServiceType
        viewAuto_SelectServiceType.addSubview( lblAuto_SelectServiceType)
        
        txtAuto_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        let AutoSelectServiceView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtAuto_SelectServiceType.leftViewMode = .always
        txtAuto_SelectServiceType.leftViewMode = .always
        txtAuto_SelectServiceType.leftView = AutoSelectServiceView
        txtAuto_SelectServiceType.placeholder = "Select Service Types"
        txtAuto_SelectServiceType.textColor = .black
        txtAuto_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtAuto_SelectServiceType.layer.cornerRadius = 12.0
        txtAuto_SelectServiceType.layer.borderWidth = 1
        txtAuto_SelectServiceType.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtAuto_SelectServiceType"] = txtAuto_SelectServiceType
        viewAuto_SelectServiceType.addSubview(txtAuto_SelectServiceType)
        
        
        
        //--------> Bike StackView
        
        bike_contentStackView.translatesAutoresizingMaskIntoConstraints = false
        bike_contentStackView.alignment = .fill
        bike_contentStackView.spacing = 20
        bike_contentStackView.axis = .vertical
        layoutDict["bike_contentStackView"] = bike_contentStackView
        viewVehicleInfoContentBase.addArrangedSubview(bike_contentStackView)
        
        viewBike_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewBike_VechicleModel"] = viewBike_VechicleModel
        bike_contentStackView.addArrangedSubview(viewBike_VechicleModel)
        
        lblBike_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        lblBike_VechicleModel.text = "Enter Vehicle Model"
        lblBike_VechicleModel.textAlignment = .left
        lblBike_VechicleModel.textColor = .black
        lblBike_VechicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblBike_VechicleModel"] =  lblBike_VechicleModel
        viewBike_VechicleModel.addSubview( lblBike_VechicleModel)
        
        
        txtBike_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        let BikeVh_ModelView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtBike_VechicleModel.leftViewMode = .always
        txtBike_VechicleModel.leftView = BikeVh_ModelView
        txtBike_VechicleModel.placeholder = "Enter Vehicle model"
        txtBike_VechicleModel.textColor = .black
        txtBike_VechicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtBike_VechicleModel.layer.cornerRadius = 12.0
        txtBike_VechicleModel.layer.borderWidth = 1
        txtBike_VechicleModel.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtBike_VechicleModel"] = txtBike_VechicleModel
        viewBike_VechicleModel.addSubview(txtBike_VechicleModel)
        
        
        viewBike_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewBike_VechicleNumber"] = viewBike_VechicleNumber
        bike_contentStackView.addArrangedSubview(viewBike_VechicleNumber)
        
        lblBike_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        lblBike_VechicleNumber.text = "Enter Vehicle Number"
        lblBike_VechicleNumber.textAlignment = .left
        lblBike_VechicleNumber.textColor = .black
        lblBike_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblBike_VechicleNumber"] =  lblBike_VechicleNumber
        viewBike_VechicleNumber.addSubview( lblBike_VechicleNumber)
        
        
        txtBike_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        let BikeVh_numberView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtBike_VechicleNumber.leftViewMode = .always
        txtBike_VechicleNumber.leftView = BikeVh_numberView
        txtBike_VechicleNumber.placeholder = "Vehicle number"
        txtBike_VechicleNumber.textColor = .black
        txtBike_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtBike_VechicleNumber.layer.cornerRadius = 12.0
        txtBike_VechicleNumber.layer.borderWidth = 1
        txtBike_VechicleNumber.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtBike_VechicleNumber"] = txtBike_VechicleNumber
        viewBike_VechicleNumber.addSubview(txtBike_VechicleNumber)
        
        
        viewBike_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewBike_SelectServiceType"] = viewBike_SelectServiceType
        bike_contentStackView.addArrangedSubview(viewBike_SelectServiceType)
        
        lblBike_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        lblBike_SelectServiceType.text = "Select Service Types"
        lblBike_SelectServiceType.textAlignment = .left
        lblBike_SelectServiceType.textColor = .black
        lblBike_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblBike_SelectServiceType"] =  lblBike_SelectServiceType
        viewBike_SelectServiceType.addSubview( lblBike_SelectServiceType)
        
        txtBike_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        let BikeSelectServiceView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtBike_SelectServiceType.leftViewMode = .always
        txtBike_SelectServiceType.leftViewMode = .always
        txtBike_SelectServiceType.leftView = BikeSelectServiceView
        txtBike_SelectServiceType.placeholder = "Select Service Types"
        txtBike_SelectServiceType.textColor = .black
        txtBike_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtBike_SelectServiceType.layer.cornerRadius = 12.0
        txtBike_SelectServiceType.layer.borderWidth = 1
        txtBike_SelectServiceType.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtBike_SelectServiceType"] = txtBike_SelectServiceType
        viewBike_SelectServiceType.addSubview(txtBike_SelectServiceType)
        
        
        //--------> Car StackView
        
        car_contentStackView.translatesAutoresizingMaskIntoConstraints = false
        car_contentStackView.alignment = .fill
        car_contentStackView.spacing = 20
        car_contentStackView.axis = .vertical
        layoutDict["car_contentStackView"] = car_contentStackView
        viewVehicleInfoContentBase.addArrangedSubview(car_contentStackView)
        
        viewEV_NonEV.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewEV_NonEV"] = viewEV_NonEV
        car_contentStackView.addArrangedSubview(viewEV_NonEV)
        
        lblEV_NonEVSelectCategoryTitle.translatesAutoresizingMaskIntoConstraints = false
        lblEV_NonEVSelectCategoryTitle.text = "Select Category"
        lblEV_NonEVSelectCategoryTitle.numberOfLines = 0
        lblEV_NonEVSelectCategoryTitle.textAlignment = .left
        lblEV_NonEVSelectCategoryTitle.textColor = .black
        lblEV_NonEVSelectCategoryTitle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblEV_NonEVSelectCategoryTitle"] = lblEV_NonEVSelectCategoryTitle
        viewEV_NonEV.addSubview(lblEV_NonEVSelectCategoryTitle)
        
        
        EV_NonEVStackView.translatesAutoresizingMaskIntoConstraints = false
        EV_NonEVStackView.axis = .horizontal
        EV_NonEVStackView.alignment = .fill
        EV_NonEVStackView.distribution = .fillEqually
        EV_NonEVStackView.spacing = 5
        layoutDict["EV_NonEVStackView"] = EV_NonEVStackView
        viewEV_NonEV.addSubview(EV_NonEVStackView)
        
        btnEV.translatesAutoresizingMaskIntoConstraints = false
        btnEV.setTitle("EV", for: .normal)
        btnEV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
        btnEV.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnEV.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
        btnEV.layer.cornerRadius =  8
        btnEV.layer.borderWidth =  1
        btnEV.layer.borderColor = UIColor.clear.cgColor
        layoutDict["btnEV"] = btnEV
        EV_NonEVStackView.addArrangedSubview(btnEV)
        
        btnNonEV.translatesAutoresizingMaskIntoConstraints = false
        btnNonEV.setTitle("Station", for: .normal)
        btnNonEV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
        btnNonEV.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnNonEV.backgroundColor = .none
        btnNonEV.layer.cornerRadius = 8
        btnNonEV.layer.borderWidth =  1
        btnNonEV.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        layoutDict["btnNonEV"] = btnNonEV
        EV_NonEVStackView.addArrangedSubview(btnNonEV)
        
        
        //-----> Car Types Collectionview
        
        let CarTypeLayout = UICollectionViewFlowLayout()
        CarTypeLayout.scrollDirection = .horizontal
        carTypeCollectionView.translatesAutoresizingMaskIntoConstraints = false
        carTypeCollectionView.collectionViewLayout = CarTypeLayout
        carTypeCollectionView.backgroundColor = .clear
        carTypeCollectionView.showsHorizontalScrollIndicator = false
        layoutDict["carTypeCollectionView"] = carTypeCollectionView
        car_contentStackView.addArrangedSubview(carTypeCollectionView)
        
        //-----> Car Details
        
        viewCar_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewCar_VechicleModel"] = viewCar_VechicleModel
        car_contentStackView.addArrangedSubview(viewCar_VechicleModel)
        
        lblCar_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        lblCar_VechicleModel.text = "Enter Vehicle Model"
        lblCar_VechicleModel.textAlignment = .left
        lblCar_VechicleModel.textColor = .black
        lblCar_VechicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblCar_VechicleModel"] =  lblCar_VechicleModel
        viewCar_VechicleModel.addSubview( lblCar_VechicleModel)
        
        
        txtCar_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        let CarVh_ModelView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtCar_VechicleModel.leftViewMode = .always
        txtCar_VechicleModel.leftView = CarVh_ModelView
        txtCar_VechicleModel.placeholder = "Enter Vehicle model"
        txtCar_VechicleModel.textColor = .black
        txtCar_VechicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtCar_VechicleModel.layer.cornerRadius = 12.0
        txtCar_VechicleModel.layer.borderWidth = 1
        txtCar_VechicleModel.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtCar_VechicleModel"] = txtCar_VechicleModel
        viewCar_VechicleModel.addSubview(txtCar_VechicleModel)
        
        
        viewCar_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewCar_VechicleNumber"] = viewCar_VechicleNumber
        car_contentStackView.addArrangedSubview(viewCar_VechicleNumber)
        
        lblCar_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        lblCar_VechicleNumber.text = "Enter Vehicle Number"
        lblCar_VechicleNumber.textAlignment = .left
        lblCar_VechicleNumber.textColor = .black
        lblCar_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblCar_VechicleNumber"] =  lblCar_VechicleNumber
        viewCar_VechicleNumber.addSubview( lblCar_VechicleNumber)
        
        
        txtCar_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        let CarVh_numberView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtCar_VechicleNumber.leftViewMode = .always
        txtCar_VechicleNumber.leftView = CarVh_numberView
        txtCar_VechicleNumber.placeholder = "Vehicle number"
        txtCar_VechicleNumber.textColor = .black
        txtCar_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtCar_VechicleNumber.layer.cornerRadius = 12.0
        txtCar_VechicleNumber.layer.borderWidth = 1
        txtCar_VechicleNumber.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtCar_VechicleNumber"] = txtCar_VechicleNumber
        viewCar_VechicleNumber.addSubview(txtCar_VechicleNumber)
        
        
        viewCar_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewCar_SelectServiceType"] = viewCar_SelectServiceType
        car_contentStackView.addArrangedSubview(viewCar_SelectServiceType)
        
        lblCar_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        lblCar_SelectServiceType.text = "Select Service Types"
        lblCar_SelectServiceType.textAlignment = .left
        lblCar_SelectServiceType.textColor = .black
        lblCar_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblCar_SelectServiceType"] =  lblCar_SelectServiceType
        viewCar_SelectServiceType.addSubview( lblCar_SelectServiceType)
        
        txtCar_SelectServiceType.addDropDown(text: "sdsdsd", image: "dropdown")
        txtCar_SelectServiceType.changeTextFieldType(.pickerView)
        txtCar_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        txtCar_SelectServiceType.placeholder = "Select Service Types"
        txtCar_SelectServiceType.textColor = .black
        txtCar_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtCar_SelectServiceType.layer.cornerRadius = 12.0
        txtCar_SelectServiceType.layer.borderWidth = 1
        txtCar_SelectServiceType.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtCar_SelectServiceType"] = txtCar_SelectServiceType
        viewCar_SelectServiceType.addSubview(txtCar_SelectServiceType)
        
        
        
        //--------> Coolie StackView
        
        coolie_contentStackView.translatesAutoresizingMaskIntoConstraints = false
        coolie_contentStackView.alignment = .fill
        coolie_contentStackView.spacing = 20
        coolie_contentStackView.axis = .vertical
        layoutDict["coolie_contentStackView"] = coolie_contentStackView
        viewVehicleInfoContentBase.addArrangedSubview(coolie_contentStackView)
        
        let CoolieTypeLayout = UICollectionViewFlowLayout()
        CoolieTypeLayout.scrollDirection = .horizontal
        coolieTypeCollectionView.translatesAutoresizingMaskIntoConstraints = false
        coolieTypeCollectionView.collectionViewLayout = CoolieTypeLayout
        coolieTypeCollectionView.backgroundColor = .clear
        coolieTypeCollectionView.showsHorizontalScrollIndicator = false
        layoutDict["coolieTypeCollectionView"] = coolieTypeCollectionView
        coolie_contentStackView.addArrangedSubview(coolieTypeCollectionView)
        
        //------> Coolie Details
        
        coolieDetailStackView.translatesAutoresizingMaskIntoConstraints = false
        coolieDetailStackView.alignment = .fill
        coolieDetailStackView.spacing = 20
        coolieDetailStackView.axis = .vertical
        layoutDict["coolieDetailStackView"] = coolieDetailStackView
        coolie_contentStackView.addArrangedSubview(coolieDetailStackView)
        
        viewCoolie_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        viewCoolie_VechicleModel.isHidden = true
        layoutDict["viewCoolie_VechicleModel"] = viewCoolie_VechicleModel
        coolieDetailStackView.addArrangedSubview(viewCoolie_VechicleModel)
        
        lblCoolie_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        lblCoolie_VechicleModel.text = "Enter Vehicle Model"
        lblCoolie_VechicleModel.textAlignment = .left
        lblCoolie_VechicleModel.textColor = .black
        lblCoolie_VechicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblCoolie_VechicleModel"] =  lblCoolie_VechicleModel
        viewCoolie_VechicleModel.addSubview( lblCoolie_VechicleModel)
        
        
        txtCoolie_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        let CoolieVh_ModelView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtCoolie_VechicleModel.leftViewMode = .always
        txtCoolie_VechicleModel.leftView = CoolieVh_ModelView
        txtCoolie_VechicleModel.placeholder = "Enter Vehicle model"
        txtCoolie_VechicleModel.textColor = .black
        txtCoolie_VechicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtCoolie_VechicleModel.layer.cornerRadius = 12.0
        txtCoolie_VechicleModel.layer.borderWidth = 1
        txtCoolie_VechicleModel.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtCoolie_VechicleModel"] = txtCoolie_VechicleModel
        viewCoolie_VechicleModel.addSubview(txtCoolie_VechicleModel)
        
        
        viewCoolie_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewCoolie_VechicleNumber"] = viewCoolie_VechicleNumber
        coolieDetailStackView.addArrangedSubview(viewCoolie_VechicleNumber)
        
        lblCoolie_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        lblCoolie_VechicleNumber.text = "Enter Vehicle Number"
        lblCoolie_VechicleNumber.textAlignment = .left
        lblCoolie_VechicleNumber.textColor = .black
        lblCoolie_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblCoolie_VechicleNumber"] =  lblCoolie_VechicleNumber
        viewCoolie_VechicleNumber.addSubview( lblCoolie_VechicleNumber)
        
        
        txtCoolie_VechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        let CoolieVh_numberView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtCoolie_VechicleNumber.leftViewMode = .always
        txtCoolie_VechicleNumber.leftView = CoolieVh_numberView
        txtCoolie_VechicleNumber.placeholder = "Vehicle number"
        txtCoolie_VechicleNumber.textColor = .black
        txtCoolie_VechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtCoolie_VechicleNumber.layer.cornerRadius = 12.0
        txtCoolie_VechicleNumber.layer.borderWidth = 1
        txtCoolie_VechicleNumber.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtCoolie_VechicleNumber"] = txtCoolie_VechicleNumber
        viewCoolie_VechicleNumber.addSubview(txtCoolie_VechicleNumber)
        
        
        viewCoolie_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewCoolie_SelectServiceType"] = viewCoolie_SelectServiceType
        coolieDetailStackView.addArrangedSubview(viewCoolie_SelectServiceType)
        
        lblCoolie_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        lblCoolie_SelectServiceType.text = "Select Service Types"
        lblCoolie_SelectServiceType.textAlignment = .left
        lblCoolie_SelectServiceType.textColor = .black
        lblCoolie_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblCoolie_SelectServiceType"] =  lblCoolie_SelectServiceType
        viewCoolie_SelectServiceType.addSubview( lblCoolie_SelectServiceType)
        

        txtCoolie_SelectServiceType.translatesAutoresizingMaskIntoConstraints = false
        let CoolieVh_SelectServiceTypeView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtCoolie_SelectServiceType.leftViewMode = .always
        txtCoolie_SelectServiceType.leftView = CoolieVh_SelectServiceTypeView
        txtCoolie_SelectServiceType.placeholder = "Select Service Types"
        txtCoolie_SelectServiceType.textColor = .black
        txtCoolie_SelectServiceType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtCoolie_SelectServiceType.layer.cornerRadius = 12.0
        txtCoolie_SelectServiceType.layer.borderWidth = 1
        txtCoolie_SelectServiceType.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtCoolie_SelectServiceType"] = txtCoolie_SelectServiceType
        viewCoolie_SelectServiceType.addSubview(txtCoolie_SelectServiceType)
        
        
        viewCoolie_Size.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewCoolie_Size"] = viewCoolie_Size
        coolieDetailStackView.addArrangedSubview(viewCoolie_Size)
        
        lblCoolie_Size.translatesAutoresizingMaskIntoConstraints = false
        lblCoolie_Size.text = "Select Service Types"
        lblCoolie_Size.textAlignment = .left
        lblCoolie_Size.textColor = .black
        lblCoolie_Size.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblCoolie_Size"] =  lblCoolie_Size
        viewCoolie_Size.addSubview( lblCoolie_Size)
        

        txtCoolie_Size.translatesAutoresizingMaskIntoConstraints = false
        let CoolieVh_Size = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtCoolie_Size.leftViewMode = .always
        txtCoolie_Size.leftView = CoolieVh_Size
        txtCoolie_Size.placeholder = "Select Size"
        txtCoolie_Size.textColor = .black
        txtCoolie_Size.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtCoolie_Size.layer.cornerRadius = 12.0
        txtCoolie_Size.layer.borderWidth = 1
        txtCoolie_Size.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtCoolie_Size"] = txtCoolie_Size
        viewCoolie_Size.addSubview(txtCoolie_Size)
        
        
        //--------> Others StackView
        
        others_contentStackView.translatesAutoresizingMaskIntoConstraints = false
        others_contentStackView.alignment = .fill
        others_contentStackView.spacing = 20
        others_contentStackView.axis = .vertical
        layoutDict["others_contentStackView"] = others_contentStackView
        viewVehicleInfoContentBase.addArrangedSubview(others_contentStackView)
        
        
        viewSelectAny_Service.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectAny_Service"] = viewSelectAny_Service
        others_contentStackView.addArrangedSubview(viewSelectAny_Service)
        
        lblSelectAny_Service.translatesAutoresizingMaskIntoConstraints = false
        lblSelectAny_Service.text = "Select any service"
        lblSelectAny_Service.textAlignment = .left
        lblSelectAny_Service.textColor = .lightGray
        lblSelectAny_Service.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblSelectAny_Service"] =  lblSelectAny_Service
        viewSelectAny_Service.addSubview( lblSelectAny_Service)
        
        
        stackSelectAnyService.translatesAutoresizingMaskIntoConstraints = false
        stackSelectAnyService.axis = .horizontal
        stackSelectAnyService.alignment = .fill
        stackSelectAnyService.distribution = .fillEqually
        stackSelectAnyService.spacing = 10
        layoutDict["stackSelectAnyService"] = stackSelectAnyService
        viewSelectAny_Service.addSubview(stackSelectAnyService)
        
        viewCleaningService.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewCleaningService"] = viewCleaningService
        stackSelectAnyService.addArrangedSubview(viewCleaningService)
        
        viewCleaning_Checkbox.translatesAutoresizingMaskIntoConstraints = false
        viewCleaning_Checkbox.backgroundColor = .none
        viewCleaning_Checkbox.layer.cornerRadius = 5
        viewCleaning_Checkbox.layer.borderWidth = 1
        viewCleaning_Checkbox.layer.borderColor = UIColor.black.cgColor
        layoutDict["viewCleaning_Checkbox"] = viewCleaning_Checkbox
        viewCleaningService.addSubview(viewCleaning_Checkbox)
        
        imgCleaningServiceViewCheck.translatesAutoresizingMaskIntoConstraints = false
        imgCleaningServiceViewCheck.isHidden = true
        imgCleaningServiceViewCheck.image = UIImage(named: "checked")
        imgCleaningServiceViewCheck.contentMode = .scaleAspectFit
        imgCleaningServiceViewCheck.layer.masksToBounds = true
        layoutDict["imgCleaningServiceViewCheck"] = imgCleaningServiceViewCheck
        viewCleaning_Checkbox.addSubview(imgCleaningServiceViewCheck)
        
        lblCleaningService_CheckboxTitle.translatesAutoresizingMaskIntoConstraints = false
        lblCleaningService_CheckboxTitle.text = "Cleaning Service/Acting Driver"
        lblCleaningService_CheckboxTitle.numberOfLines = 0
        lblCleaningService_CheckboxTitle.textAlignment = .left
        lblCleaningService_CheckboxTitle.textColor = .black
        lblCleaningService_CheckboxTitle.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        layoutDict["lblCleaningService_CheckboxTitle"] = lblCleaningService_CheckboxTitle
        viewCleaningService.addSubview(lblCleaningService_CheckboxTitle)
        
        btnCleaningServiceCheckbox.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnCleaningServiceCheckbox"] = btnCleaningServiceCheckbox
        viewCleaningService.addSubview(btnCleaningServiceCheckbox)
        
        
        viewSelectMechanic.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectMechanic"] = viewSelectMechanic
        stackSelectAnyService.addArrangedSubview(viewSelectMechanic)
        
        viewMechanic_Checkbox.translatesAutoresizingMaskIntoConstraints = false
        viewMechanic_Checkbox.backgroundColor = .none
        viewMechanic_Checkbox.layer.cornerRadius = 5
        viewMechanic_Checkbox.layer.borderWidth = 1
        viewMechanic_Checkbox.layer.borderColor = UIColor.black.cgColor
        layoutDict["viewMechanic_Checkbox"] = viewMechanic_Checkbox
        viewSelectMechanic.addSubview(viewMechanic_Checkbox)
        
        imgMechanicCheck.translatesAutoresizingMaskIntoConstraints = false
        imgMechanicCheck.isHidden = true
        imgMechanicCheck.image = UIImage(named: "checked")
        imgMechanicCheck.contentMode = .scaleAspectFit
        imgMechanicCheck.layer.masksToBounds = true
        layoutDict["imgMechanicCheck"] = imgMechanicCheck
        viewMechanic_Checkbox.addSubview(imgMechanicCheck)
        
        lblMechanic_CheckboxTitle.translatesAutoresizingMaskIntoConstraints = false
        lblMechanic_CheckboxTitle.text = "Mechanic"
        lblMechanic_CheckboxTitle.numberOfLines = 0
        lblMechanic_CheckboxTitle.textAlignment = .left
        lblMechanic_CheckboxTitle.textColor = .black
        lblMechanic_CheckboxTitle.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        layoutDict["lblMechanic_CheckboxTitle"] = lblMechanic_CheckboxTitle
        viewSelectMechanic.addSubview(lblMechanic_CheckboxTitle)
        
        btnMechanicCheckbox.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnMechanicCheckbox"] = btnMechanicCheckbox
        viewSelectMechanic.addSubview(btnMechanicCheckbox)
        
        
        viewSelectPackersAndMovers.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectPackersAndMovers"] = viewSelectPackersAndMovers
        stackSelectAnyService.addArrangedSubview(viewSelectPackersAndMovers)
        
        viewPackersAndMovers_Checkbox.translatesAutoresizingMaskIntoConstraints = false
        viewPackersAndMovers_Checkbox.backgroundColor = .none
        viewPackersAndMovers_Checkbox.layer.cornerRadius = 5
        viewPackersAndMovers_Checkbox.layer.borderWidth = 1
        viewPackersAndMovers_Checkbox.layer.borderColor = UIColor.black.cgColor
        layoutDict["viewPackersAndMovers_Checkbox"] = viewPackersAndMovers_Checkbox
        viewSelectPackersAndMovers.addSubview(viewPackersAndMovers_Checkbox)
        
        imgPackersAndMoversCheck.translatesAutoresizingMaskIntoConstraints = false
        imgPackersAndMoversCheck.isHidden = true
        imgPackersAndMoversCheck.image = UIImage(named: "checked")
        imgPackersAndMoversCheck.contentMode = .scaleAspectFit
        imgPackersAndMoversCheck.layer.masksToBounds = true
        layoutDict["imgPackersAndMoversCheck"] = imgPackersAndMoversCheck
        viewPackersAndMovers_Checkbox.addSubview(imgPackersAndMoversCheck)
        
        lblPackersAndMovers_CheckboxTitle.translatesAutoresizingMaskIntoConstraints = false
        lblPackersAndMovers_CheckboxTitle.text = "Packers and Movers"
        lblPackersAndMovers_CheckboxTitle.numberOfLines = 0
        lblPackersAndMovers_CheckboxTitle.textAlignment = .left
        lblPackersAndMovers_CheckboxTitle.textColor = .black
        lblPackersAndMovers_CheckboxTitle.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        layoutDict["lblPackersAndMovers_CheckboxTitle"] = lblPackersAndMovers_CheckboxTitle
        viewSelectPackersAndMovers.addSubview(lblPackersAndMovers_CheckboxTitle)
        
        btnPackersAndMoversCheckbox.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnPackersAndMoversCheckbox"] = btnPackersAndMoversCheckbox
        viewSelectPackersAndMovers.addSubview(btnPackersAndMoversCheckbox)
        
        
        viewServiceAvailabilityLocation.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewServiceAvailabilityLocation"] = viewServiceAvailabilityLocation
        others_contentStackView.addArrangedSubview(viewServiceAvailabilityLocation)
        
        lblServiceAvailabilityLocation.translatesAutoresizingMaskIntoConstraints = false
        lblServiceAvailabilityLocation.text = "Service Availability Location"
        lblServiceAvailabilityLocation.textAlignment = .left
        lblServiceAvailabilityLocation.textColor = .lightGray
        lblServiceAvailabilityLocation.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblServiceAvailabilityLocation"] =  lblServiceAvailabilityLocation
        viewServiceAvailabilityLocation.addSubview( lblServiceAvailabilityLocation)
        
        txtServiceAvailabilityLocation.translatesAutoresizingMaskIntoConstraints = false
        txtServiceAvailabilityLocation.leftViewMode = .always
        let ServiceAvailabilityLocation_leftViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtServiceAvailabilityLocation.leftViewMode = .always
        txtServiceAvailabilityLocation.leftView = ServiceAvailabilityLocation_leftViewContainer
        txtServiceAvailabilityLocation.placeholder = "Select Service Types"
        txtServiceAvailabilityLocation.textColor = .black
        txtServiceAvailabilityLocation.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtServiceAvailabilityLocation.layer.cornerRadius = 12.0
        txtServiceAvailabilityLocation.layer.borderWidth = 1
        txtServiceAvailabilityLocation.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtServiceAvailabilityLocation"] = txtServiceAvailabilityLocation
        viewServiceAvailabilityLocation.addSubview(txtServiceAvailabilityLocation)
        
        
        
        //-----> Submit button
        
        viewSubmitBtn.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSubmitBtn"] = viewSubmitBtn
        viewVehicleInfoContentBase.addArrangedSubview(viewSubmitBtn)
        
        btnSubmit.translatesAutoresizingMaskIntoConstraints = false
        btnSubmit.setTitle("SUBMIT", for: .normal)
        btnSubmit.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
        btnSubmit.layer.cornerRadius =  5
        btnSubmit.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnSubmit.backgroundColor =  UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
        layoutDict["btnSubmit"] = btnSubmit
        viewSubmitBtn.addSubview(btnSubmit)
        
        
        
        //--------> viewContent
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutDict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewBack_title(40)]-10-[scrollView]|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewBack_title]|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[scrollView]|", options: [], metrics: nil, views: layoutDict))
        
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnBack]|", options: [], metrics: nil, views: layoutDict))
        
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[btnBack(40)]", options: [], metrics: nil, views: layoutDict))
        
        
        //--------> scrollView
        
        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewVehicleInfo]|", options: [], metrics: nil, views: layoutDict))
        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewVehicleInfo]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleInfo.widthAnchor.constraint(equalTo: viewContent.widthAnchor).isActive = true
        let containerHgt = viewVehicleInfo.heightAnchor.constraint(equalTo: viewContent.heightAnchor)
        containerHgt.priority = .defaultLow
        containerHgt.isActive = true
        
        //--------> Vehicle information content holding View
        
        viewVehicleInfo.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblTitle]-20-[VechicleTypeCollectionView(70)]-20-[viewVehicleInfoContentBase]|", options: [], metrics: nil, views: layoutDict))
        
        viewVehicleInfo.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblTitle]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleInfo.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[VechicleTypeCollectionView]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleInfo.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewVehicleInfoContentBase]|", options: [], metrics: nil, views: layoutDict))
        
        //--------> AmbulanceContent
        
        ambulanceTypeCollectionView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        viewAmbulance_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblAmbulance_VechicleNumber]-10-[txtAmbulance_VechicleNumber(60)]|", options: [], metrics: nil, views: layoutDict))
        viewAmbulance_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblAmbulance_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        viewAmbulance_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtAmbulance_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewAmbulance_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblAmbulance_SelectServiceType]-10-[txtAmbulance_SelectServiceType(60)]|", options: [], metrics: nil, views: layoutDict))
        viewAmbulance_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblAmbulance_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))
        viewAmbulance_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtAmbulance_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        //--------> Auto Content
        
        viewFreelance_station.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSelectCategoryTitle]-10-[freelance_stationStackView(60)]|", options: [], metrics: nil, views: layoutDict))
        viewFreelance_station.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblSelectCategoryTitle]-10-|", options: [], metrics: nil, views: layoutDict))
        viewFreelance_station.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[freelance_stationStackView]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewSelectStation.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSelectStation]-20-[txtSelectStation(60)]|", options: [], metrics: nil, views: layoutDict))
        viewSelectStation.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblSelectStation]-10-|", options: [], metrics: nil, views: layoutDict))
        viewSelectStation.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtSelectStation]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        
        viewAuto_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblAuto_VechicleNumber]-10-[txtAuto_VechicleNumber(60)]|", options: [], metrics: nil, views: layoutDict))
        viewAuto_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblAuto_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        viewAuto_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtAuto_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        viewAuto_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblAuto_SelectServiceType]-10-[txtAuto_SelectServiceType(60)]|", options: [], metrics: nil, views: layoutDict))
        viewAuto_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblAuto_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))
        viewAuto_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtAuto_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        
        
        //--------> Bike Content
        
        viewBike_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblBike_VechicleModel]-10-[txtBike_VechicleModel(60)]|", options: [], metrics: nil, views: layoutDict))
        viewBike_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblBike_VechicleModel]-10-|", options: [], metrics: nil, views: layoutDict))
        viewBike_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtBike_VechicleModel]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewBike_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblBike_VechicleNumber]-10-[txtBike_VechicleNumber(60)]|", options: [], metrics: nil, views: layoutDict))
        viewBike_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblBike_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        viewBike_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtBike_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        viewBike_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblBike_SelectServiceType]-10-[txtBike_SelectServiceType(60)]|", options: [], metrics: nil, views: layoutDict))
        viewBike_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblBike_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))
        viewBike_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtBike_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        //--------> Car Content
        
        viewEV_NonEV.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblEV_NonEVSelectCategoryTitle]-10-[EV_NonEVStackView(60)]|", options: [], metrics: nil, views: layoutDict))
        viewEV_NonEV.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblEV_NonEVSelectCategoryTitle]-10-|", options: [], metrics: nil, views: layoutDict))
        viewEV_NonEV.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[EV_NonEVStackView]-10-|", options: [], metrics: nil, views: layoutDict))
        
        carTypeCollectionView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        viewCar_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCar_VechicleModel]-10-[txtCar_VechicleModel(60)]|", options: [], metrics: nil, views: layoutDict))
        viewCar_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblCar_VechicleModel]-10-|", options: [], metrics: nil, views: layoutDict))
        viewCar_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtCar_VechicleModel]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewCar_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCar_VechicleNumber]-10-[txtCar_VechicleNumber(60)]|", options: [], metrics: nil, views: layoutDict))
        viewCar_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblCar_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        viewCar_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtCar_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        viewCar_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCar_SelectServiceType]-10-[txtCar_SelectServiceType(60)]|", options: [], metrics: nil, views: layoutDict))
        viewCar_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblCar_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))
        viewCar_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtCar_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))

        
        //--------> Coolie Content
        
        coolieTypeCollectionView.heightAnchor.constraint(equalToConstant: 140).isActive = true

        viewCoolie_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCoolie_VechicleModel]-10-[txtCoolie_VechicleModel(60)]|", options: [], metrics: nil, views: layoutDict))
        viewCoolie_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblCoolie_VechicleModel]-10-|", options: [], metrics: nil, views: layoutDict))
        viewCoolie_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtCoolie_VechicleModel]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewCoolie_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCoolie_VechicleNumber]-10-[txtCoolie_VechicleNumber(60)]|", options: [], metrics: nil, views: layoutDict))
        viewCoolie_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblCoolie_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        viewCoolie_VechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtCoolie_VechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        viewCoolie_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCoolie_SelectServiceType]-10-[txtCoolie_SelectServiceType(60)]|", options: [], metrics: nil, views: layoutDict))
        viewCoolie_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblCoolie_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))
        viewCoolie_SelectServiceType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtCoolie_SelectServiceType]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        viewCoolie_Size.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCoolie_Size]-10-[txtCoolie_Size(60)]|", options: [], metrics: nil, views: layoutDict))
        viewCoolie_Size.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblCoolie_Size]-10-|", options: [], metrics: nil, views: layoutDict))
        viewCoolie_Size.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtCoolie_Size]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        
        //--------> Others Content
        
        viewSelectAny_Service.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSelectAny_Service]-10-[stackSelectAnyService(50)]|", options: [], metrics: nil, views: layoutDict))
        viewSelectAny_Service.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblSelectAny_Service]-10-|", options: [], metrics: nil, views: layoutDict))
        viewSelectAny_Service.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[stackSelectAnyService]-10-|", options: [], metrics: nil, views: layoutDict))
        
        //--------> select Cleaning Service
        
        viewCleaning_Checkbox.centerYAnchor.constraint(equalTo: viewCleaningService.centerYAnchor, constant: 0).isActive = true
        viewCleaning_Checkbox.heightAnchor.constraint(equalToConstant: 20).isActive = true
        lblCleaningService_CheckboxTitle.centerYAnchor.constraint(equalTo: viewCleaningService.centerYAnchor, constant: 0).isActive = true
        viewCleaningService.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewCleaning_Checkbox(20)]-10-[lblCleaningService_CheckboxTitle]|", options: [], metrics: nil, views: layoutDict))

        viewCleaning_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgCleaningServiceViewCheck]|", options: [], metrics: nil, views: layoutDict))
        viewCleaning_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgCleaningServiceViewCheck]|", options: [], metrics: nil, views: layoutDict))

        viewCleaningService.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnCleaningServiceCheckbox]|", options: [], metrics: nil, views: layoutDict))
        viewCleaningService.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnCleaningServiceCheckbox]|", options: [], metrics: nil, views: layoutDict))
        
        
        //--------> select Mechanic
        
        viewMechanic_Checkbox.centerYAnchor.constraint(equalTo: viewSelectMechanic.centerYAnchor, constant: 0).isActive = true
        viewMechanic_Checkbox.heightAnchor.constraint(equalToConstant: 20).isActive = true
        lblMechanic_CheckboxTitle.centerYAnchor.constraint(equalTo: viewSelectMechanic.centerYAnchor, constant: 0).isActive = true
        viewSelectMechanic.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewMechanic_Checkbox(20)]-10-[lblMechanic_CheckboxTitle]|", options: [], metrics: nil, views: layoutDict))

        viewMechanic_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgMechanicCheck]|", options: [], metrics: nil, views: layoutDict))
        viewMechanic_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgMechanicCheck]|", options: [], metrics: nil, views: layoutDict))

        viewSelectMechanic.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnMechanicCheckbox]|", options: [], metrics: nil, views: layoutDict))
        viewSelectMechanic.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnMechanicCheckbox]|", options: [], metrics: nil, views: layoutDict))
        
        //--------> select Packers and movers
        
        viewPackersAndMovers_Checkbox.centerYAnchor.constraint(equalTo: viewSelectPackersAndMovers.centerYAnchor, constant: 0).isActive = true
        viewPackersAndMovers_Checkbox.heightAnchor.constraint(equalToConstant: 20).isActive = true
        lblPackersAndMovers_CheckboxTitle.centerYAnchor.constraint(equalTo: viewSelectPackersAndMovers.centerYAnchor, constant: 0).isActive = true
        viewSelectPackersAndMovers.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewPackersAndMovers_Checkbox(20)]-10-[lblPackersAndMovers_CheckboxTitle]|", options: [], metrics: nil, views: layoutDict))

        viewPackersAndMovers_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgPackersAndMoversCheck]|", options: [], metrics: nil, views: layoutDict))
        viewPackersAndMovers_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgPackersAndMoversCheck]|", options: [], metrics: nil, views: layoutDict))

        viewSelectPackersAndMovers.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnPackersAndMoversCheckbox]|", options: [], metrics: nil, views: layoutDict))
        viewSelectPackersAndMovers.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnPackersAndMoversCheckbox]|", options: [], metrics: nil, views: layoutDict))
        
        // -----> Servive Availability Location
        
        viewServiceAvailabilityLocation.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblServiceAvailabilityLocation]-10-[txtServiceAvailabilityLocation(60)]|", options: [], metrics: nil, views: layoutDict))
        viewServiceAvailabilityLocation.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblServiceAvailabilityLocation]-10-|", options: [], metrics: nil, views: layoutDict))
        viewServiceAvailabilityLocation.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtServiceAvailabilityLocation]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        
        viewSubmitBtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[btnSubmit(60)]-10-|", options: [], metrics: nil, views: layoutDict))
        viewSubmitBtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[btnSubmit]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewContent.layoutIfNeeded()
        viewContent.setNeedsLayout()
        
    }
}
