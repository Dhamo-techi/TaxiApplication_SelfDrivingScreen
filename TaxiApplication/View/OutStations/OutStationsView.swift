//
//  OutStationsView.swift
//  TaxiApplication
//
//  Created by MAC PRO on 12/06/24.
//

import UIKit

class OutStationsView: UIView {

    var layoutDict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewBack_title = UIView()
    var btnBack = UIButton()
    
    var viewNavigationTitle = UIView()
    var lblViewTitle = UILabel()
    let viewMyself = UIView()
    let lblMyself = UILabel()
    let arrowMyself = UIImageView()
    
    var scrollView = UIScrollView()
    var viewLocalContent = UIView()
    var lblLocalTitle = UILabel()

    var stackviewVehiclePickup_drop = UIStackView()
    var viewVehicle_Pickup_Date = UIView()
    var lblVehiclePickUpTitle = UILabel()
    var viewSelect_VechiclePickup = UIView()
    var imgvwPickUpCalendar = UIImageView()
    var txtFldPickupDate = UITextField()
    var btnPickupDate = UIButton()
    var viewVehicle_Drop_Date = UIView()
    var lblVehicleDropTitle = UILabel()
    var viewSelect_VechicleDrop = UIView()
    var imgvwDropCalendar = UIImageView()
    var txtFldDropDate = UITextField()
    var btnDropDate = UIButton()
    
    var stackviewHomeDeliveryBtn_Address = UIStackView()
    var viewSelectHomeDeliver = UIView()
    var lblSelectHomeDeliver = UILabel()
    var viewBackground_SelectHomeDeliverBtn = UIView()

    var stackviewSelectHome_GarageBtn = UIStackView()
    var viewHomeDeliverybtn = UIView()
    var imgvwHomeDeliveryCar = UIImageView()
    var lblHomeDeliveryCar = UILabel()
    var btnHomeDeliveryCar = UIButton()
    var viewGaragePickupbtn = UIView()
    var imgvwGaragePickupCar = UIImageView()
    var lblGaragePickupCar = UILabel()
    var btnGaragePickupCar = UIButton()
    var viewSelectHomeAddress = UIView()
    var lblEnterHomeAddress = UILabel()
    
    let locationView = UIView()
    let locationColor = UIView()
    let lblLocation = UILabel()
    let btnEditLocation = UIButton()
    
    var viewFuelType = UIView()
    var lblFuelType = UILabel()
    var viewEv_nonEv = UIView()
    var stackEv_nonEv = UIStackView()
    var btnEV = UIButton()
    var btnNon_EV = UIButton()
    
    var stackviewVehicleCategory_Brand = UIStackView()
    var viewVechicleCategory = UIView()
    var lblVechicleCategory = UILabel()
    let VechicleCategoryCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    var viewBrand = UIView()
    var lblBrand = UILabel()
    let BrandCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    var viewVechicleModel = UIView()
    var lblVechicleModel = UILabel()
    var viewSelect_VechicleModel = UIView()
    var txtSelect_VehicleModel = RJKPickerTextField()
    
    var viewManufactureYear = UIView()
    var lblManufactureYear = UILabel()
    var viewEnter_ManufactureYear = UIView()
    let txtManufactureYear = RJKPickerTextField()

    var viewDummyForHeight = UIView()

    
    var viewBidBtn = UIView()
    var btnBid = UIButton()

    
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
        let backImage = UIImage(named: "backArrowImage")
        btnBack.setImage(backImage, for: .normal)
        btnBack.backgroundColor = .white
        btnBack.tintColor = .black
        btnBack.layer.cornerRadius = 20
        btnBack.layer.shadowOpacity = 0.5
        btnBack.layer.shadowOffset = CGSize(width: 0, height: 2)
        btnBack.layer.shadowRadius = 3
        layoutDict["btnBack"] = btnBack
        viewBack_title.addSubview(btnBack)
        
        viewNavigationTitle.translatesAutoresizingMaskIntoConstraints = false
        viewNavigationTitle.backgroundColor = .white
        viewNavigationTitle.layer.cornerRadius = 6
        viewNavigationTitle.layer.shadowColor = UIColor.black.cgColor
        viewNavigationTitle.layer.shadowOpacity = 0.5
        viewNavigationTitle.layer.shadowOffset = CGSize(width:0, height: 2)
        viewNavigationTitle.layer.shadowRadius = 3
        layoutDict["viewNavigationTitle"] = viewNavigationTitle
        viewBack_title.addSubview(viewNavigationTitle)
    
        lblViewTitle.translatesAutoresizingMaskIntoConstraints = false
        lblViewTitle.text = "Self Driving Car"
        lblViewTitle.textAlignment = .left
        lblViewTitle.textColor = .black
        lblViewTitle.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutDict["lblViewTitle"] = lblViewTitle
        viewNavigationTitle.addSubview(lblViewTitle)
        
        viewMyself.layer.cornerRadius = 5
//        viewMyself.backgroundColor = .hexToColor("E6EAF3")
        viewMyself.backgroundColor = .lightGray
        layoutDict["viewMyself"] = viewMyself
        viewMyself.translatesAutoresizingMaskIntoConstraints = false
        viewNavigationTitle.addSubview(viewMyself)

        lblMyself.textAlignment = .left
        lblMyself.textColor = .black
        lblMyself.text = "Myself"
        lblMyself.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        layoutDict["lblMyself"] = lblMyself
        lblMyself.translatesAutoresizingMaskIntoConstraints = false
        viewMyself.addSubview(lblMyself)

        arrowMyself.image = UIImage(named: "downArrowLight")
        arrowMyself.contentMode = .scaleAspectFit
        layoutDict["arrowMyself"] = arrowMyself
        arrowMyself.translatesAutoresizingMaskIntoConstraints = false
        viewMyself.addSubview(arrowMyself)
        
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        layoutDict["scrollView"] = scrollView
        viewContent.addSubview(scrollView)
        
        viewLocalContent.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewLocalContent"] = viewLocalContent
        scrollView.addSubview(viewLocalContent)
        
        lblLocalTitle.translatesAutoresizingMaskIntoConstraints = false
        lblLocalTitle.text = "OUTSTATIONS"
        lblLocalTitle.textAlignment = .left
        lblLocalTitle.textColor = .black
        lblLocalTitle.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutDict["lblLocalTitle"] = lblLocalTitle
        viewLocalContent.addSubview(lblLocalTitle)
        
        stackviewVehiclePickup_drop.translatesAutoresizingMaskIntoConstraints = false
        stackviewVehiclePickup_drop.axis = .vertical
        stackviewVehiclePickup_drop.alignment = .fill
        stackviewVehiclePickup_drop.spacing = 20
        layoutDict["stackviewVehiclePickup_drop"] = stackviewVehiclePickup_drop
        viewLocalContent.addSubview(stackviewVehiclePickup_drop)
        
        viewVehicle_Pickup_Date.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVehicle_Pickup_Date"] = viewVehicle_Pickup_Date
        stackviewVehiclePickup_drop.addArrangedSubview(viewVehicle_Pickup_Date)
        
        lblVehiclePickUpTitle.translatesAutoresizingMaskIntoConstraints = false
        lblVehiclePickUpTitle.text = "Vehicle Pickup Date/Time  :"
        lblVehiclePickUpTitle.textAlignment = .left
        lblVehiclePickUpTitle.textColor = .black
        lblVehiclePickUpTitle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblVehiclePickUpTitle"] = lblVehiclePickUpTitle
        viewVehicle_Pickup_Date.addSubview(lblVehiclePickUpTitle)
        
        viewSelect_VechiclePickup.translatesAutoresizingMaskIntoConstraints = false
        viewSelect_VechiclePickup.layer.borderWidth = 1.5
        viewSelect_VechiclePickup.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        viewSelect_VechiclePickup.layer.cornerRadius = 12.0
        layoutDict["viewSelect_VechiclePickup"] = viewSelect_VechiclePickup
        viewVehicle_Pickup_Date.addSubview(viewSelect_VechiclePickup)
        
        imgvwPickUpCalendar.translatesAutoresizingMaskIntoConstraints = false
        imgvwPickUpCalendar.image = UIImage(named: "Calendar")
        imgvwPickUpCalendar.contentMode = .scaleAspectFit
        imgvwPickUpCalendar.layer.masksToBounds = true
        layoutDict["imgvwPickUpCalendar"] = imgvwPickUpCalendar
        viewSelect_VechiclePickup.addSubview(imgvwPickUpCalendar)
        
        txtFldPickupDate.translatesAutoresizingMaskIntoConstraints = false
        txtFldPickupDate.placeholder = "Pick vehicle pickup date and time"
        txtFldPickupDate.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["txtFldPickupDate"] = txtFldPickupDate
        viewSelect_VechiclePickup.addSubview(txtFldPickupDate)
        
        btnPickupDate.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnPickupDate"] = btnPickupDate
        viewSelect_VechiclePickup.addSubview(btnPickupDate)
        
        
        viewVehicle_Drop_Date.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVehicle_Drop_Date"] = viewVehicle_Drop_Date
        stackviewVehiclePickup_drop.addArrangedSubview(viewVehicle_Drop_Date)
        
        lblVehicleDropTitle.translatesAutoresizingMaskIntoConstraints = false
        lblVehicleDropTitle.text = "Vehicle Pickup Date/Time  :"
        lblVehicleDropTitle.textAlignment = .left
        lblVehicleDropTitle.textColor = .black
        lblVehicleDropTitle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblVehicleDropTitle"] = lblVehicleDropTitle
        viewVehicle_Drop_Date.addSubview(lblVehicleDropTitle)
        
        viewSelect_VechicleDrop.translatesAutoresizingMaskIntoConstraints = false
        viewSelect_VechicleDrop.layer.borderWidth = 1.5
        viewSelect_VechicleDrop.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        viewSelect_VechicleDrop.layer.cornerRadius = 12.0
        layoutDict["viewSelect_VechicleDrop"] = viewSelect_VechicleDrop
        viewVehicle_Drop_Date.addSubview(viewSelect_VechicleDrop)
        
        imgvwDropCalendar.translatesAutoresizingMaskIntoConstraints = false
        imgvwDropCalendar.image = UIImage(named: "Calendar")
        imgvwDropCalendar.contentMode = .scaleAspectFit
        imgvwDropCalendar.layer.masksToBounds = true
        layoutDict["imgvwDropCalendar"] = imgvwDropCalendar
        viewSelect_VechicleDrop.addSubview(imgvwDropCalendar)
        
        txtFldDropDate.translatesAutoresizingMaskIntoConstraints = false
        txtFldDropDate.placeholder = "Pick vehicle drop date and time"
        txtFldDropDate.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["txtFldDropDate"] = txtFldDropDate
        viewSelect_VechicleDrop.addSubview(txtFldDropDate)
        
        btnDropDate.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnDropDate"] = btnDropDate
        viewSelect_VechicleDrop.addSubview(btnDropDate)
        
        viewSelectHomeDeliver.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectHomeDeliver"] = viewSelectHomeDeliver
        viewLocalContent.addSubview(viewSelectHomeDeliver)
        
        lblSelectHomeDeliver.translatesAutoresizingMaskIntoConstraints = false
        lblSelectHomeDeliver.text = "Select Home Deliver Or Garage Pickup :"
        lblSelectHomeDeliver.textAlignment = .left
        lblSelectHomeDeliver.textColor = .black
        lblSelectHomeDeliver.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblSelectHomeDeliver"] = lblSelectHomeDeliver
        viewSelectHomeDeliver.addSubview(lblSelectHomeDeliver)
        
        stackviewHomeDeliveryBtn_Address.translatesAutoresizingMaskIntoConstraints = false
        stackviewHomeDeliveryBtn_Address.axis = .vertical
        stackviewHomeDeliveryBtn_Address.alignment = .fill
        stackviewHomeDeliveryBtn_Address.spacing = 20
        layoutDict["stackviewHomeDeliveryBtn_Address"] = stackviewHomeDeliveryBtn_Address
        viewSelectHomeDeliver.addSubview(stackviewHomeDeliveryBtn_Address)

        viewBackground_SelectHomeDeliverBtn.translatesAutoresizingMaskIntoConstraints = false
        viewBackground_SelectHomeDeliverBtn.layer.shadowColor = UIColor.black.cgColor
        viewBackground_SelectHomeDeliverBtn.layer.shadowOpacity = 0.6
        viewBackground_SelectHomeDeliverBtn.layer.shadowOffset = CGSize(width:0, height: 2)
        viewBackground_SelectHomeDeliverBtn.layer.shadowRadius = 5
        viewBackground_SelectHomeDeliverBtn.layer.cornerRadius = 8.0
        viewBackground_SelectHomeDeliverBtn.backgroundColor = .white
        layoutDict["viewBackground_SelectHomeDeliverBtn"] = viewBackground_SelectHomeDeliverBtn
        stackviewHomeDeliveryBtn_Address.addArrangedSubview(viewBackground_SelectHomeDeliverBtn)
        
        stackviewSelectHome_GarageBtn.translatesAutoresizingMaskIntoConstraints = false
        stackviewSelectHome_GarageBtn.axis = .horizontal
        stackviewSelectHome_GarageBtn.alignment = .fill
        stackviewSelectHome_GarageBtn.distribution = .fillEqually
        stackviewSelectHome_GarageBtn.spacing = 0
        stackviewSelectHome_GarageBtn.backgroundColor = .white
        layoutDict["stackviewSelectHome_GarageBtn"] = stackviewSelectHome_GarageBtn
        viewBackground_SelectHomeDeliverBtn.addSubview(stackviewSelectHome_GarageBtn)
        
        viewHomeDeliverybtn.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewHomeDeliverybtn"] = viewHomeDeliverybtn
        stackviewSelectHome_GarageBtn.addArrangedSubview(viewHomeDeliverybtn)
        
        imgvwHomeDeliveryCar.translatesAutoresizingMaskIntoConstraints = false
        imgvwHomeDeliveryCar.image = UIImage(named: "homeServiceFill")
        imgvwHomeDeliveryCar.contentMode = .scaleAspectFit
        imgvwHomeDeliveryCar.layer.masksToBounds = true
        layoutDict["imgvwHomeDeliveryCar"] = imgvwHomeDeliveryCar
        viewHomeDeliverybtn.addSubview(imgvwHomeDeliveryCar)
        
        lblHomeDeliveryCar.translatesAutoresizingMaskIntoConstraints = false
        lblHomeDeliveryCar.text = "Home Service"
        lblHomeDeliveryCar.textAlignment = .center
        lblHomeDeliveryCar.textColor = .black
        lblHomeDeliveryCar.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        layoutDict["lblHomeDeliveryCar"] = lblHomeDeliveryCar
        viewHomeDeliverybtn.addSubview(lblHomeDeliveryCar)
        
        btnHomeDeliveryCar.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnHomeDeliveryCar"] = btnHomeDeliveryCar
        viewHomeDeliverybtn.addSubview(btnHomeDeliveryCar)

        viewGaragePickupbtn.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewGaragePickupbtn"] = viewGaragePickupbtn
        stackviewSelectHome_GarageBtn.addArrangedSubview(viewGaragePickupbtn)
        
        imgvwGaragePickupCar.translatesAutoresizingMaskIntoConstraints = false
        imgvwGaragePickupCar.image = UIImage(named: "garagePickup")
        imgvwGaragePickupCar.contentMode = .scaleAspectFit
        imgvwGaragePickupCar.layer.masksToBounds = true
        layoutDict["imgvwGaragePickupCar"] = imgvwGaragePickupCar
        viewGaragePickupbtn.addSubview(imgvwGaragePickupCar)
        
        lblGaragePickupCar.translatesAutoresizingMaskIntoConstraints = false
        lblGaragePickupCar.text = "Garage Pickup"
        lblGaragePickupCar.textAlignment = .center
        lblGaragePickupCar.textColor = .black
        lblGaragePickupCar.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        layoutDict["lblGaragePickupCar"] = lblGaragePickupCar
        viewGaragePickupbtn.addSubview(lblGaragePickupCar)
        
        btnGaragePickupCar.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnGaragePickupCar"] = btnGaragePickupCar
        viewGaragePickupbtn.addSubview(btnGaragePickupCar)
        
        viewSelectHomeAddress.translatesAutoresizingMaskIntoConstraints = false
        viewSelectHomeAddress.backgroundColor = .white
        viewSelectHomeAddress.isHidden = true
        layoutDict["viewSelectHomeAddress"] = viewSelectHomeAddress
        stackviewHomeDeliveryBtn_Address.addArrangedSubview(viewSelectHomeAddress)
        
        lblEnterHomeAddress.translatesAutoresizingMaskIntoConstraints = false
        lblEnterHomeAddress.text = "Enter Home Address :"
        lblEnterHomeAddress.textAlignment = .left
        lblEnterHomeAddress.textColor = .black
        lblEnterHomeAddress.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblEnterHomeAddress"] = lblEnterHomeAddress
        viewSelectHomeAddress.addSubview(lblEnterHomeAddress)
        
        locationView.layer.cornerRadius = 8
        locationView.backgroundColor = .white
        locationView.layer.shadowOpacity = 0.6
        locationView.layer.shadowOffset = CGSize(width:0, height: 2)
        locationView.layer.shadowRadius = 5
        locationView.layer.cornerRadius = 8.0
        layoutDict["locationView"] = locationView
        locationView.translatesAutoresizingMaskIntoConstraints = false
        viewLocalContent.addSubview(locationView)
        
        locationColor.layer.cornerRadius = 5
        locationColor.backgroundColor = .blue
        layoutDict["locationColor"] = locationColor
        locationColor.translatesAutoresizingMaskIntoConstraints = false
        locationView.addSubview(locationColor)
        
        lblLocation.translatesAutoresizingMaskIntoConstraints = false
        lblLocation.text = "17/40, Coimbatore, Tamil Nadu 641037, India"
        lblLocation.numberOfLines = 0
        lblLocation.textAlignment = .left
        lblLocation.textColor = .black
        lblLocation.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblLocation"] = lblLocation
        locationView.addSubview(lblLocation)
        
        btnEditLocation.setImage(UIImage(named: "ic_note"), for: .normal)
        layoutDict["btnEditLocation"] = btnEditLocation
        btnEditLocation.translatesAutoresizingMaskIntoConstraints = false
        locationView.addSubview(btnEditLocation)
        
        
        viewFuelType.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewFuelType"] = viewFuelType
        viewLocalContent.addSubview(viewFuelType)
        
        lblFuelType.translatesAutoresizingMaskIntoConstraints = false
        lblFuelType.text = "Fuel Type :"
        lblFuelType.textAlignment = .left
        lblFuelType.textColor = .black
        lblFuelType.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblFuelType"] = lblFuelType
        viewFuelType.addSubview(lblFuelType)
        
        viewEv_nonEv.translatesAutoresizingMaskIntoConstraints = false
        viewEv_nonEv.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
        viewEv_nonEv.layer.cornerRadius = 20
        layoutDict["viewEv_nonEv"] = viewEv_nonEv
        viewFuelType.addSubview(viewEv_nonEv)
        
        stackEv_nonEv.translatesAutoresizingMaskIntoConstraints = false
        stackEv_nonEv.axis = .horizontal
        stackEv_nonEv.alignment = .fill
        stackEv_nonEv.distribution = .fillEqually
        stackEv_nonEv.spacing = 35
        layoutDict["stackEv_nonEv"] = stackEv_nonEv
        viewEv_nonEv.addSubview(stackEv_nonEv)
        
        btnEV.translatesAutoresizingMaskIntoConstraints = false
        btnEV.setTitle("EV", for: .normal)
        btnEV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
        btnEV.layer.cornerRadius =  17
        btnEV.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnEV.backgroundColor = UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0)
        layoutDict["btnEV"] = btnEV
        stackEv_nonEv.addArrangedSubview(btnEV)
        
        btnNon_EV.translatesAutoresizingMaskIntoConstraints = false
        btnNon_EV.setTitle("Non-EV", for: .normal)
        btnNon_EV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
        btnNon_EV.layer.cornerRadius = 17
        btnNon_EV.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnNon_EV.backgroundColor = .none
        layoutDict["btnNon_EV"] = btnNon_EV
        stackEv_nonEv.addArrangedSubview(btnNon_EV)
        
        stackviewVehicleCategory_Brand.translatesAutoresizingMaskIntoConstraints = false
        stackviewVehicleCategory_Brand.axis = .vertical
        stackviewVehicleCategory_Brand.alignment = .fill
        stackviewVehicleCategory_Brand.spacing = 20
        layoutDict["stackviewVehicleCategory_Brand"] = stackviewVehicleCategory_Brand
        viewLocalContent.addSubview(stackviewVehicleCategory_Brand)
        
        viewVechicleCategory.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVechicleCategory"] = viewVechicleCategory
        stackviewVehicleCategory_Brand.addArrangedSubview(viewVechicleCategory)
        
        lblVechicleCategory.translatesAutoresizingMaskIntoConstraints = false
        lblVechicleCategory.text = "Select Vehicle Category :"
        lblVechicleCategory.textAlignment = .left
        lblVechicleCategory.textColor = .black
        lblVechicleCategory.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblVechicleCategory"] =  lblVechicleCategory
        viewVechicleCategory.addSubview( lblVechicleCategory)
        
        let packageTypeLayout = UICollectionViewFlowLayout()
        packageTypeLayout.scrollDirection = .horizontal
        VechicleCategoryCollectionView.collectionViewLayout = packageTypeLayout
        VechicleCategoryCollectionView.backgroundColor = .white
        VechicleCategoryCollectionView.showsHorizontalScrollIndicator = false
        layoutDict["VechicleCategoryCollectionView"] = VechicleCategoryCollectionView
        VechicleCategoryCollectionView.translatesAutoresizingMaskIntoConstraints = false
        viewVechicleCategory.addSubview(VechicleCategoryCollectionView)
        
        
        viewBrand.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewBrand"] = viewBrand
        stackviewVehicleCategory_Brand.addArrangedSubview(viewBrand)
        
        lblBrand.translatesAutoresizingMaskIntoConstraints = false
        lblBrand.text = "Choose Brand :"
        lblBrand.textAlignment = .left
        lblBrand.textColor = .black
        lblBrand.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblBrand"] =  lblBrand
        viewBrand.addSubview( lblBrand)
        
        let BrandTypeLayout = UICollectionViewFlowLayout()
        BrandTypeLayout.scrollDirection = .horizontal
        BrandCollectionView.collectionViewLayout = BrandTypeLayout
        BrandCollectionView.backgroundColor = .white
        BrandCollectionView.showsHorizontalScrollIndicator = false
        layoutDict["BrandCollectionView"] = BrandCollectionView
        BrandCollectionView.translatesAutoresizingMaskIntoConstraints = false
        viewBrand.addSubview(BrandCollectionView)

        
        viewVechicleModel.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVechicleModel"] = viewVechicleModel
        stackviewVehicleCategory_Brand.addArrangedSubview(viewVechicleModel)
        
        lblVechicleModel.translatesAutoresizingMaskIntoConstraints = false
        lblVechicleModel.text = "Select Vehicle Model :"
        lblVechicleModel.textAlignment = .left
        lblVechicleModel.textColor = .black
        lblVechicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblVechicleModel"] =  lblVechicleModel
        viewVechicleModel.addSubview( lblVechicleModel)
        
        viewSelect_VechicleModel.translatesAutoresizingMaskIntoConstraints = false
        viewSelect_VechicleModel.layer.borderWidth = 1.5
        viewSelect_VechicleModel.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        viewSelect_VechicleModel.layer.cornerRadius = 12.0
        layoutDict["viewSelect_VechicleModel"] = viewSelect_VechicleModel
        viewVechicleModel.addSubview(viewSelect_VechicleModel)
        
        txtSelect_VehicleModel.addDropDownSelectCarModel(text: "Suv", image: "dropdown", carimage: "1")
        txtSelect_VehicleModel.changeTextFieldType(.pickerView)
        txtSelect_VehicleModel.translatesAutoresizingMaskIntoConstraints = false
        txtSelect_VehicleModel.placeholder = "Select the vehicle model"
        txtSelect_VehicleModel.textColor = .black
        txtSelect_VehicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtSelect_VehicleModel.layer.cornerRadius = 12.0
        txtSelect_VehicleModel.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        layoutDict["txtSelect_VehicleModel"] = txtSelect_VehicleModel
        viewSelect_VechicleModel.addSubview(txtSelect_VehicleModel)
        
        viewManufactureYear.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewManufactureYear"] = viewManufactureYear
        stackviewVehicleCategory_Brand.addArrangedSubview(viewManufactureYear)
        
        lblManufactureYear.translatesAutoresizingMaskIntoConstraints = false
        lblManufactureYear.text = "Enter the Manufacture Year :"
        lblManufactureYear.textAlignment = .left
        lblManufactureYear.textColor = .black
        lblManufactureYear.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblManufactureYear"] =  lblManufactureYear
        viewManufactureYear.addSubview( lblManufactureYear)
        
        viewEnter_ManufactureYear.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewEnter_ManufactureYear"] = viewEnter_ManufactureYear
        viewManufactureYear.addSubview(viewEnter_ManufactureYear)

        txtManufactureYear.addDropDown(text: "2000", image: "dropdown")
        txtManufactureYear.changeTextFieldType(.pickerView)
        txtManufactureYear.translatesAutoresizingMaskIntoConstraints = false
        txtManufactureYear.placeholder = "2000"
        txtManufactureYear.textColor = .black
        txtManufactureYear.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtManufactureYear.layer.cornerRadius = 12.0
        txtManufactureYear.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        layoutDict["txtManufactureYear"] = txtManufactureYear
        viewEnter_ManufactureYear.addSubview(txtManufactureYear)
        
        viewDummyForHeight.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewDummyForHeight"] = viewDummyForHeight
        viewLocalContent.addSubview(viewDummyForHeight)
        
        
        viewBidBtn.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewBidBtn"] = viewBidBtn
        viewBidBtn.backgroundColor = .white
        viewContent.addSubview(viewBidBtn)
        
        btnBid.translatesAutoresizingMaskIntoConstraints = false
        btnBid.setTitle("BID FOR PRICING", for: .normal)
        btnBid.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
        btnBid.layer.cornerRadius =  5
        btnBid.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnBid.backgroundColor =  UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
        layoutDict["btnBid"] = btnBid
        viewBidBtn.addSubview(btnBid)
        
        
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutDict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewBack_title(40)]-10-[scrollView]|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewBack_title]|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[scrollView]|", options: [], metrics: nil, views: layoutDict))
        
        //Navigation title
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnBack]|", options: [], metrics: nil, views: layoutDict))
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewNavigationTitle]|", options: [], metrics: nil, views: layoutDict))
    
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[btnBack(40)]-20-[viewNavigationTitle]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewNavigationTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblViewTitle]|", options: [], metrics: nil, views: layoutDict))
        viewNavigationTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[viewMyself]-5-|", options: [], metrics: nil, views: layoutDict))
        viewNavigationTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblViewTitle][viewMyself]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewMyself.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[lblMyself]-8-[arrowMyself(15)]-5-|", options: [], metrics: nil, views: layoutDict))
        viewMyself.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[lblMyself]-5-|", options: [], metrics: nil, views: layoutDict))
        arrowMyself.heightAnchor.constraint(equalToConstant: 15).isActive = true
        arrowMyself.centerYAnchor.constraint(equalTo: lblMyself.centerYAnchor, constant: 0).isActive = true
        
        
        //ScrollView Content Holding View
        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewLocalContent]|", options: [], metrics: nil, views: layoutDict))
        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewLocalContent]|", options: [], metrics: nil, views: layoutDict))
        viewLocalContent.widthAnchor.constraint(equalTo: viewContent.widthAnchor).isActive = true
        let containerHgt = viewLocalContent.heightAnchor.constraint(equalTo: viewContent.heightAnchor)
        containerHgt.priority = .defaultLow
        containerHgt.isActive = true
        
    
        viewLocalContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[lblLocalTitle]-10-[locationView]-20-[stackviewVehiclePickup_drop]-20-[viewFuelType]-20-[stackviewVehicleCategory_Brand]-20-[viewSelectHomeDeliver][viewDummyForHeight]|", options: [], metrics: nil, views: layoutDict))
        viewLocalContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblLocalTitle]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewLocalContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[stackviewVehiclePickup_drop]-10-|", options: [], metrics: nil, views: layoutDict))
        viewLocalContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[locationView]-10-|", options: [], metrics: nil, views: layoutDict))
        viewLocalContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewDummyForHeight]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewVehicle_Pickup_Date.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVehiclePickUpTitle]-10-[viewSelect_VechiclePickup(60)]|", options: [], metrics: nil, views: layoutDict))
        viewVehicle_Pickup_Date.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblVehiclePickUpTitle]|", options: [], metrics: nil, views: layoutDict))
        viewVehicle_Pickup_Date.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewSelect_VechiclePickup]|", options: [], metrics: nil, views: layoutDict))
        
        imgvwPickUpCalendar.centerYAnchor.constraint(equalTo: viewSelect_VechiclePickup.centerYAnchor, constant: 0).isActive = true
        imgvwPickUpCalendar.heightAnchor.constraint(equalToConstant: 20).isActive = true
        viewSelect_VechiclePickup.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[txtFldPickupDate]|", options: [], metrics: nil, views: layoutDict))
        viewSelect_VechiclePickup.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imgvwPickUpCalendar(20)]-10-[txtFldPickupDate]|", options: [], metrics: nil, views: layoutDict))
        
        viewSelect_VechiclePickup.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnPickupDate]|", options: [], metrics: nil, views: layoutDict))
        viewSelect_VechiclePickup.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnPickupDate]|", options: [], metrics: nil, views: layoutDict))
        
        
        viewVehicle_Drop_Date.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVehicleDropTitle]-10-[viewSelect_VechicleDrop(60)]|", options: [], metrics: nil, views: layoutDict))
        viewVehicle_Drop_Date.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblVehicleDropTitle]|", options: [], metrics: nil, views: layoutDict))
        viewVehicle_Drop_Date.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewSelect_VechicleDrop]|", options: [], metrics: nil, views: layoutDict))
        
        
        imgvwDropCalendar.centerYAnchor.constraint(equalTo: viewSelect_VechicleDrop.centerYAnchor, constant: 0).isActive = true
        imgvwDropCalendar.heightAnchor.constraint(equalToConstant: 20).isActive = true
        viewSelect_VechicleDrop.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[txtFldDropDate]|", options: [], metrics: nil, views: layoutDict))
        viewSelect_VechicleDrop.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imgvwDropCalendar(20)]-10-[txtFldDropDate]|", options: [], metrics: nil, views: layoutDict))
        
        viewSelect_VechicleDrop.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnDropDate]|", options: [], metrics: nil, views: layoutDict))
        viewSelect_VechicleDrop.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnDropDate]|", options: [], metrics: nil, views: layoutDict))
        
        
        
        viewLocalContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewSelectHomeDeliver]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        viewSelectHomeDeliver.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSelectHomeDeliver]-10-[stackviewHomeDeliveryBtn_Address]|", options: [], metrics: nil, views: layoutDict))
        viewSelectHomeDeliver.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblSelectHomeDeliver]|", options: [], metrics: nil, views: layoutDict))
        
        viewSelectHomeDeliver.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[stackviewHomeDeliveryBtn_Address]|", options: [], metrics: nil, views: layoutDict))
        
                
        viewBackground_SelectHomeDeliverBtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[stackviewSelectHome_GarageBtn]|", options: [], metrics: nil, views: layoutDict))
        
        viewBackground_SelectHomeDeliverBtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[stackviewSelectHome_GarageBtn]|", options: [], metrics: nil, views: layoutDict))
        
        viewHomeDeliverybtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[imgvwHomeDeliveryCar(70)]-10-[lblHomeDeliveryCar]-10-|", options: [], metrics: nil, views: layoutDict))

        viewHomeDeliverybtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgvwHomeDeliveryCar]|", options: [], metrics: nil, views: layoutDict))
        viewHomeDeliverybtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblHomeDeliveryCar]|", options: [], metrics: nil, views: layoutDict))
        
        viewHomeDeliverybtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnHomeDeliveryCar]|", options: [], metrics: nil, views: layoutDict))
        viewHomeDeliverybtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnHomeDeliveryCar]|", options: [], metrics: nil, views: layoutDict))
        btnHomeDeliveryCar.bringSubviewToFront(viewHomeDeliverybtn)
                
        viewGaragePickupbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[imgvwGaragePickupCar(70)]-10-[lblGaragePickupCar]-10-|", options: [], metrics: nil, views: layoutDict))

        viewGaragePickupbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgvwGaragePickupCar]|", options: [], metrics: nil, views: layoutDict))
        viewGaragePickupbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblGaragePickupCar]|", options: [], metrics: nil, views: layoutDict))
        
        viewGaragePickupbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnGaragePickupCar]|", options: [], metrics: nil, views: layoutDict))
        viewGaragePickupbtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnGaragePickupCar]|", options: [], metrics: nil, views: layoutDict))
        btnGaragePickupCar.bringSubviewToFront(viewGaragePickupbtn)
        
        
        
//        viewSelectHomeAddress.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblEnterHomeAddress]|", options: [], metrics: nil, views: layoutDict))
//        viewSelectHomeAddress.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblEnterHomeAddress]|", options: [], metrics: nil, views: layoutDict))
        
        
        locationView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[locationColor(10)]-8-[lblLocation]-8-[btnEditLocation(25)]-8-|", options: [], metrics: nil, views: layoutDict))
        locationView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[lblLocation]-5-|", options: [], metrics: nil, views: layoutDict))
        locationColor.heightAnchor.constraint(equalToConstant: 10).isActive = true
        locationColor.centerYAnchor.constraint(equalTo: lblLocation.centerYAnchor, constant: 0).isActive = true
        btnEditLocation.heightAnchor.constraint(equalToConstant: 25).isActive = true
        btnEditLocation.centerYAnchor.constraint(equalTo: lblLocation.centerYAnchor, constant: 0).isActive = true
    
        viewLocalContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewFuelType]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewFuelType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblFuelType]-20-[viewEv_nonEv(50)]|", options: [], metrics: nil, views: layoutDict))
        viewFuelType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblFuelType]|", options: [], metrics: nil, views: layoutDict))
        viewFuelType.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewEv_nonEv]|", options: [], metrics: nil, views: layoutDict))
        
        viewEv_nonEv.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[stackEv_nonEv]-8-|", options: [], metrics: nil, views: layoutDict))
        viewEv_nonEv.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[stackEv_nonEv]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        viewLocalContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[stackviewVehicleCategory_Brand]-10-|", options: [], metrics: nil, views: layoutDict))
        viewVechicleCategory.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVechicleCategory]-20-[VechicleCategoryCollectionView(80)]|", options: [], metrics: nil, views: layoutDict))
        viewVechicleCategory.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblVechicleCategory]|", options: [], metrics: nil, views: layoutDict))
        viewVechicleCategory.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[VechicleCategoryCollectionView]|", options: [], metrics: nil, views: layoutDict))
        
        viewBrand.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblBrand]-20-[BrandCollectionView(80)]|", options: [], metrics: nil, views: layoutDict))
        viewBrand.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblBrand]|", options: [], metrics: nil, views: layoutDict))
        viewBrand.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[BrandCollectionView]|", options: [], metrics: nil, views: layoutDict))
        
        viewVechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVechicleModel]-20-[viewSelect_VechicleModel(60)]|", options: [], metrics: nil, views: layoutDict))
        viewVechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblVechicleModel]|", options: [], metrics: nil, views: layoutDict))
        viewVechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewSelect_VechicleModel]|", options: [], metrics: nil, views: layoutDict))
        viewSelect_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[txtSelect_VehicleModel]|", options: [], metrics: nil, views: layoutDict))
        viewSelect_VechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[txtSelect_VehicleModel]|", options: [], metrics: nil, views: layoutDict))
        
        viewManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblManufactureYear]-10-[viewEnter_ManufactureYear(120)]|", options: [], metrics: nil, views: layoutDict))
        viewManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblManufactureYear]|", options: [], metrics: nil, views: layoutDict))
        viewManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewEnter_ManufactureYear(60)]|", options: [], metrics: nil, views: layoutDict))
        
        viewEnter_ManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[txtManufactureYear]|", options: [], metrics: nil, views: layoutDict))
        viewEnter_ManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[txtManufactureYear]|", options: [], metrics: nil, views: layoutDict))
        
        viewDummyForHeight.heightAnchor.constraint(equalToConstant: 70).isActive = true

        
        viewBidBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true
        viewBidBtn.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: 0).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewBidBtn]|", options: [], metrics: nil, views: layoutDict))

        btnBid.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btnBid.centerYAnchor.constraint(equalTo: viewBidBtn.centerYAnchor, constant: 0).isActive = true
        btnBid.centerXAnchor.constraint(equalTo: viewBidBtn.centerXAnchor, constant: 0).isActive = true
        viewBidBtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[btnBid]-10-|", options: [], metrics: nil, views: layoutDict))
        
        viewContent.layoutIfNeeded()
        viewContent.setNeedsLayout()
    }

}

