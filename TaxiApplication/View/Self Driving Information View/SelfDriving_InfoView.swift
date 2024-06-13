//
//  SelfDriving_InfoView.swift
//  TaxiApplication
//
//  Created by MAC PRO on 13/06/24.
//

import UIKit

class SelfDriving_InfoView: UIView {

    var layoutDict = [String : Any]()
    
    
    var viewContent = UIView()
    
    var viewBack_title = UIView()
    var btnBack = UIButton()
    
    var scrollView = UIScrollView()
    
    var viewSelfDriving_infoContent = UIView()
    var contentStackView = UIStackView()
    var lblTitle = UILabel()

    var viewSelectCategory = UIView()
    var lblSelectCategoryTitle = UILabel()
    var stackEv_nonEv = UIStackView()
    var btnEV = UIButton()
    var btnNon_EV = UIButton()
    
    var viewSelectVehicle_Type = UIView()
    var lblSelectVehicle_TypeTitle = UILabel()
    let VechicleTypeCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    var viewSelectVehicle_Hint = UIView()
    var lblSelectVehicle_HintTitle = UILabel()
    let VechicleHintCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    var ModelStackView = UIStackView()
    var viewVechicleModel = UIView()
    var lblVechicleModel = UILabel()
    let txtSelect_VehicleModel = RJKPickerTextField()
    
    var viewVechicleManufactureYear = UIView()
    var lblVechicleManufactureYear = UILabel()
    let txtSelect_VehicleManufactureYear = RJKPickerTextField()
       
    var viewVechicleNumber = UIView()
    var lblVechicleNumber = UILabel()
    let txtSelect_VehicleNumber = UITextField()
    
    var viewSelectHome_Garage = UIView()
    var lblSelectHome_GarageTitle = UILabel()
    
    var stackHome_Garage = UIStackView()
    var viewSelectGarage_Pickup = UIView()
    var viewSelectGarage_Checkbox = UIView()
    let imgGarageViewCheck = UIImageView()
    var lblviewSelectGarage_CheckboxTitle = UILabel()
    var btnGaragePickupCheckbox = UIButton()
    
    var viewSelectHome_delivery = UIView()
    var viewSelectHome_Checkbox = UIView()
    let imgHomeViewCheck = UIImageView()
    var lblviewSelectHome_CheckboxTitle = UILabel()
    var btnHomePickupCheckbox = UIButton()

    var viewDummyForHeight = UIView()

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
        let backImage = UIImage(named: "backArrowImage")
        btnBack.setImage(backImage, for: .normal)
//        btnBack.addShadow()
        layoutDict["btnBack"] = btnBack
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        btnBack.backgroundColor = .white
        btnBack.tintColor = .black
        btnBack.layer.cornerRadius = 20
        btnBack.layer.shadowOpacity = 0.5
        btnBack.layer.shadowOffset = CGSize(width: 0, height: 2)
        btnBack.layer.shadowRadius = 3
        layoutDict["btnBack"] = btnBack
        viewBack_title.addSubview(btnBack)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        layoutDict["scrollView"] = scrollView
        viewContent.addSubview(scrollView)
        
        viewSelfDriving_infoContent.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelfDriving_infoContent"] = viewSelfDriving_infoContent
        scrollView.addSubview(viewSelfDriving_infoContent)
        
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.text = "Self driving vehicle information"
        lblTitle.textAlignment = .left
        lblTitle.numberOfLines = 0
        lblTitle.textColor = .black
        lblTitle.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutDict["lblTitle"] = lblTitle
        viewSelfDriving_infoContent.addSubview(lblTitle)
        
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        contentStackView.alignment = .fill
        contentStackView.spacing = 20
        contentStackView.axis = .vertical
        layoutDict["contentStackView"] = contentStackView
        viewSelfDriving_infoContent.addSubview(contentStackView)
        
        viewSelectCategory.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectCategory"] = viewSelectCategory
        contentStackView.addArrangedSubview(viewSelectCategory)
        
        lblSelectCategoryTitle.translatesAutoresizingMaskIntoConstraints = false
        lblSelectCategoryTitle.text = "Select Category"
        lblSelectCategoryTitle.numberOfLines = 0
        lblSelectCategoryTitle.textAlignment = .left
        lblSelectCategoryTitle.textColor = .black
        lblSelectCategoryTitle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblSelectCategoryTitle"] = lblSelectCategoryTitle
        viewSelectCategory.addSubview(lblSelectCategoryTitle)
        
        stackEv_nonEv.translatesAutoresizingMaskIntoConstraints = false
        stackEv_nonEv.axis = .horizontal
        stackEv_nonEv.alignment = .fill
        stackEv_nonEv.distribution = .fillEqually
        stackEv_nonEv.spacing = 2
        layoutDict["stackEv_nonEv"] = stackEv_nonEv
        viewSelectCategory.addSubview(stackEv_nonEv)
        
        btnEV.translatesAutoresizingMaskIntoConstraints = false
        btnEV.setTitle("EV", for: .normal)
        btnEV.setTitleColor(UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0), for: .normal)
        btnEV.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnEV.backgroundColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0)
        btnEV.layer.cornerRadius =  8
        btnEV.layer.borderWidth =  1
        btnEV.layer.borderColor = UIColor(red: 255/255, green: 209/255, blue: 0/255, alpha: 1.0).cgColor
        layoutDict["btnEV"] = btnEV
        stackEv_nonEv.addArrangedSubview(btnEV)
        
        btnNon_EV.translatesAutoresizingMaskIntoConstraints = false
        btnNon_EV.setTitle("Non-EV", for: .normal)
        btnNon_EV.setTitleColor(UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0), for: .normal)
        btnNon_EV.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        btnNon_EV.backgroundColor = .none
        btnNon_EV.layer.cornerRadius = 8
        btnNon_EV.layer.borderWidth =  1
        btnNon_EV.layer.borderColor = UIColor(red: 4/255, green: 64/255, blue: 12/255, alpha: 1.0).cgColor
        layoutDict["btnNon_EV"] = btnNon_EV
        stackEv_nonEv.addArrangedSubview(btnNon_EV)
        
        
        viewSelectVehicle_Type.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectVehicle_Type"] = viewSelectVehicle_Type
        contentStackView.addArrangedSubview(viewSelectVehicle_Type)
        
        lblSelectVehicle_TypeTitle.translatesAutoresizingMaskIntoConstraints = false
        lblSelectVehicle_TypeTitle.text = "Select vehicle type"
        lblSelectVehicle_TypeTitle.numberOfLines = 0
        lblSelectVehicle_TypeTitle.textAlignment = .left
        lblSelectVehicle_TypeTitle.textColor = .black
        lblSelectVehicle_TypeTitle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblSelectVehicle_TypeTitle"] = lblSelectVehicle_TypeTitle
        viewSelectVehicle_Type.addSubview(lblSelectVehicle_TypeTitle)
        
        let VehicleTypeLayout = UICollectionViewFlowLayout()
        VehicleTypeLayout.scrollDirection = .horizontal
        VechicleTypeCollectionView.collectionViewLayout = VehicleTypeLayout
        VechicleTypeCollectionView.backgroundColor = .clear
        VechicleTypeCollectionView.showsHorizontalScrollIndicator = false
        layoutDict["VechicleTypeCollectionView"] = VechicleTypeCollectionView
        VechicleTypeCollectionView.translatesAutoresizingMaskIntoConstraints = false
        viewSelectVehicle_Type.addSubview(VechicleTypeCollectionView)
        
        
        
        viewSelectVehicle_Hint.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectVehicle_Hint"] = viewSelectVehicle_Type
        contentStackView.addArrangedSubview(viewSelectVehicle_Hint)
        
        lblSelectVehicle_HintTitle.translatesAutoresizingMaskIntoConstraints = false
        lblSelectVehicle_HintTitle.text = "hint_select_vehicle_brand"
        lblSelectVehicle_HintTitle.numberOfLines = 0
        lblSelectVehicle_HintTitle.textAlignment = .left
        lblSelectVehicle_HintTitle.textColor = .black
        lblSelectVehicle_HintTitle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblSelectVehicle_HintTitle"] = lblSelectVehicle_HintTitle
        viewSelectVehicle_Hint.addSubview(lblSelectVehicle_HintTitle)
        
        let VehicleHintTypeLayout = UICollectionViewFlowLayout()
        VehicleHintTypeLayout.scrollDirection = .horizontal
        VechicleHintCollectionView.collectionViewLayout = VehicleHintTypeLayout
        VechicleHintCollectionView.backgroundColor = .clear
        VechicleHintCollectionView.showsHorizontalScrollIndicator = false
        layoutDict["VechicleHintCollectionView"] = VechicleHintCollectionView
        VechicleHintCollectionView.translatesAutoresizingMaskIntoConstraints = false
        viewSelectVehicle_Hint.addSubview(VechicleHintCollectionView)

        
        //----View that appear after select the Type and Hint
        
        ModelStackView.translatesAutoresizingMaskIntoConstraints = false
        ModelStackView.alignment = .fill
        ModelStackView.spacing = 20
        ModelStackView.axis = .vertical
        ModelStackView.isHidden = true
        layoutDict["ModelStackView"] = ModelStackView
        contentStackView.addArrangedSubview(ModelStackView)
        
        viewVechicleModel.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVechicleModel"] = viewVechicleModel
        ModelStackView.addArrangedSubview(viewVechicleModel)
        
        lblVechicleModel.translatesAutoresizingMaskIntoConstraints = false
        lblVechicleModel.text = "Select Vehicle Model :"
        lblVechicleModel.textAlignment = .left
        lblVechicleModel.textColor = .black
        lblVechicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblVechicleModel"] =  lblVechicleModel
        viewVechicleModel.addSubview( lblVechicleModel)
        
        txtSelect_VehicleModel.addDropDown(text: "your_text", image: "downArrowLight")
        txtSelect_VehicleModel.changeTextFieldType(.pickerView)
        txtSelect_VehicleModel.translatesAutoresizingMaskIntoConstraints = false
        txtSelect_VehicleModel.placeholder = "Select your vehicle model"
        txtSelect_VehicleModel.textColor = .black
        txtSelect_VehicleModel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtSelect_VehicleModel.layer.cornerRadius = 12.0
        txtSelect_VehicleModel.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtSelect_VehicleModel"] = txtSelect_VehicleModel
        viewVechicleModel.addSubview(txtSelect_VehicleModel)
        
        viewVechicleManufactureYear.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVechicleManufactureYear"] = viewVechicleManufactureYear
        ModelStackView.addArrangedSubview(viewVechicleManufactureYear)
        
        lblVechicleManufactureYear.translatesAutoresizingMaskIntoConstraints = false
        lblVechicleManufactureYear.text = "Enter the manufacture year :"
        lblVechicleManufactureYear.textAlignment = .left
        lblVechicleManufactureYear.textColor = .black
        lblVechicleManufactureYear.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblVechicleManufactureYear"] =  lblVechicleManufactureYear
        viewVechicleManufactureYear.addSubview( lblVechicleManufactureYear)
        
        txtSelect_VehicleManufactureYear.addDropDown(text: "your_text", image: "downArrowLight")
        txtSelect_VehicleManufactureYear.changeTextFieldType(.pickerView)
        txtSelect_VehicleManufactureYear.translatesAutoresizingMaskIntoConstraints = false
        txtSelect_VehicleManufactureYear.placeholder = "Enter the manufacture year"
        txtSelect_VehicleManufactureYear.textColor = .black
        txtSelect_VehicleManufactureYear.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtSelect_VehicleManufactureYear.layer.cornerRadius = 12.0
        txtSelect_VehicleManufactureYear.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtSelect_VehicleManufactureYear"] = txtSelect_VehicleManufactureYear
        viewVechicleManufactureYear.addSubview(txtSelect_VehicleManufactureYear)
        
        
        viewVechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVechicleNumber"] = viewVechicleNumber
        ModelStackView.addArrangedSubview(viewVechicleNumber)
        
        lblVechicleNumber.translatesAutoresizingMaskIntoConstraints = false
        lblVechicleNumber.text = "Enter the Vehicle Number :"
        lblVechicleNumber.textAlignment = .left
        lblVechicleNumber.textColor = .black
        lblVechicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblVechicleNumber"] =  lblVechicleNumber
        viewVechicleNumber.addSubview( lblVechicleNumber)
        
        
        txtSelect_VehicleNumber.translatesAutoresizingMaskIntoConstraints = false
        let leftViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        txtSelect_VehicleNumber.leftViewMode = .always
        txtSelect_VehicleNumber.leftView = leftViewContainer
        txtSelect_VehicleNumber.placeholder = "Enter the Vehicle number"
        txtSelect_VehicleNumber.textColor = .black
        txtSelect_VehicleNumber.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        txtSelect_VehicleNumber.layer.cornerRadius = 12.0
        txtSelect_VehicleNumber.layer.borderWidth = 1
        txtSelect_VehicleNumber.layer.borderColor = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1.0).cgColor
        layoutDict["txtSelect_VehicleNumber"] = txtSelect_VehicleNumber
        viewVechicleNumber.addSubview(txtSelect_VehicleNumber)
        
        
        viewSelectHome_Garage.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectHome_Garage"] = viewSelectHome_Garage
        ModelStackView.addArrangedSubview(viewSelectHome_Garage)
        
        lblSelectHome_GarageTitle.translatesAutoresizingMaskIntoConstraints = false
        lblSelectHome_GarageTitle.text = "Select Category"
        lblSelectHome_GarageTitle.numberOfLines = 0
        lblSelectHome_GarageTitle.textAlignment = .left
        lblSelectHome_GarageTitle.textColor = .black
        lblSelectHome_GarageTitle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutDict["lblSelectHome_GarageTitle"] = lblSelectHome_GarageTitle
        viewSelectHome_Garage.addSubview(lblSelectHome_GarageTitle)
        
        stackHome_Garage.translatesAutoresizingMaskIntoConstraints = false
        stackHome_Garage.axis = .horizontal
        stackHome_Garage.alignment = .fill
        stackHome_Garage.distribution = .fillEqually
        stackHome_Garage.spacing = 0
        layoutDict["stackHome_Garage"] = stackHome_Garage
        viewSelectHome_Garage.addSubview(stackHome_Garage)
        
        viewSelectGarage_Pickup.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectGarage_Pickup"] = viewSelectGarage_Pickup
        stackHome_Garage.addArrangedSubview(viewSelectGarage_Pickup)
        
        viewSelectGarage_Checkbox.translatesAutoresizingMaskIntoConstraints = false
        viewSelectGarage_Checkbox.backgroundColor = .none
        viewSelectGarage_Checkbox.layer.cornerRadius = 5
        viewSelectGarage_Checkbox.layer.borderWidth = 1
        viewSelectGarage_Checkbox.layer.borderColor = UIColor.black.cgColor
        layoutDict["viewSelectGarage_Checkbox"] = viewSelectGarage_Checkbox
        viewSelectGarage_Pickup.addSubview(viewSelectGarage_Checkbox)
        
        imgGarageViewCheck.translatesAutoresizingMaskIntoConstraints = false
        imgGarageViewCheck.isHidden = true
        imgGarageViewCheck.image = UIImage(named: "checked")
        imgGarageViewCheck.contentMode = .scaleAspectFit
        imgGarageViewCheck.layer.masksToBounds = true
        layoutDict["imgGarageViewCheck"] = imgGarageViewCheck
        viewSelectGarage_Checkbox.addSubview(imgGarageViewCheck)
        
        lblviewSelectGarage_CheckboxTitle.translatesAutoresizingMaskIntoConstraints = false
        lblviewSelectGarage_CheckboxTitle.text = "Garage Pickup"
        lblviewSelectGarage_CheckboxTitle.numberOfLines = 0
        lblviewSelectGarage_CheckboxTitle.textAlignment = .left
        lblviewSelectGarage_CheckboxTitle.textColor = .black
        lblviewSelectGarage_CheckboxTitle.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        layoutDict["lblviewSelectGarage_CheckboxTitle"] = lblviewSelectGarage_CheckboxTitle
        viewSelectGarage_Pickup.addSubview(lblviewSelectGarage_CheckboxTitle)
        
        btnGaragePickupCheckbox.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnGaragePickupCheckbox"] = btnGaragePickupCheckbox
        viewSelectGarage_Pickup.addSubview(btnGaragePickupCheckbox)
        
        
        
        viewSelectHome_delivery.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelectHome_delivery"] = viewSelectHome_delivery
        stackHome_Garage.addArrangedSubview(viewSelectHome_delivery)
        
        viewSelectHome_Checkbox.translatesAutoresizingMaskIntoConstraints = false
        viewSelectHome_Checkbox.backgroundColor = .none
        viewSelectHome_Checkbox.layer.cornerRadius = 5
        viewSelectHome_Checkbox.layer.borderWidth = 1
        viewSelectHome_Checkbox.layer.borderColor = UIColor.black.cgColor
        layoutDict["viewSelectHome_Checkbox"] = viewSelectHome_Checkbox
        viewSelectHome_delivery.addSubview(viewSelectHome_Checkbox)
        
        imgHomeViewCheck.translatesAutoresizingMaskIntoConstraints = false
        imgHomeViewCheck.isHidden = true
        imgHomeViewCheck.image = UIImage(named: "checked")
        imgHomeViewCheck.contentMode = .scaleAspectFit
        imgHomeViewCheck.layer.masksToBounds = true
        layoutDict["imgHomeViewCheck"] = imgHomeViewCheck
        viewSelectHome_Checkbox.addSubview(imgHomeViewCheck)
        
        lblviewSelectHome_CheckboxTitle.translatesAutoresizingMaskIntoConstraints = false
        lblviewSelectHome_CheckboxTitle.text = "Garage Pickup"
        lblviewSelectHome_CheckboxTitle.numberOfLines = 0
        lblviewSelectHome_CheckboxTitle.textAlignment = .left
        lblviewSelectHome_CheckboxTitle.textColor = .black
        lblviewSelectHome_CheckboxTitle.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        layoutDict["lblviewSelectHome_CheckboxTitle"] = lblviewSelectHome_CheckboxTitle
        viewSelectHome_delivery.addSubview(lblviewSelectHome_CheckboxTitle)
        
        btnHomePickupCheckbox.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnHomePickupCheckbox"] = btnHomePickupCheckbox
        viewSelectHome_delivery.addSubview(btnHomePickupCheckbox)
        
        viewDummyForHeight.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewDummyForHeight"] = viewDummyForHeight
        ModelStackView.addArrangedSubview(viewDummyForHeight)
        
        
        viewSubmitBtn.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSubmitBtn"] = viewSubmitBtn
        viewSubmitBtn.backgroundColor = .white
        viewContent.addSubview(viewSubmitBtn)
        
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
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewBack_title(40)]-20-[scrollView]|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewBack_title]|", options: [], metrics: nil, views: layoutDict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[scrollView]|", options: [], metrics: nil, views: layoutDict))
        
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnBack]|", options: [], metrics: nil, views: layoutDict))
    
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[btnBack(40)]", options: [], metrics: nil, views: layoutDict))
        
        
        //--------> scrollView

        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewSelfDriving_infoContent]|", options: [], metrics: nil, views: layoutDict))
        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewSelfDriving_infoContent]|", options: [], metrics: nil, views: layoutDict))
        contentStackView.widthAnchor.constraint(equalTo: viewContent.widthAnchor).isActive = true
        let containerHgt = contentStackView.heightAnchor.constraint(equalTo: viewContent.heightAnchor)
        containerHgt.priority = .defaultLow
        containerHgt.isActive = true
        
        
        //--------> Self Driving information content holding View

        viewSelfDriving_infoContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblTitle]-20-[contentStackView]|", options: [], metrics: nil, views: layoutDict))
        viewSelfDriving_infoContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblTitle]|", options: [], metrics: nil, views: layoutDict))
        viewSelfDriving_infoContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[contentStackView]|", options: [], metrics: nil, views: layoutDict))
        
        //--------> Select Category
        viewSelectCategory.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSelectCategoryTitle]-10-[stackEv_nonEv(50)]|", options: [], metrics: nil, views: layoutDict))
        viewSelectCategory.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblSelectCategoryTitle]-10-|", options: [], metrics: nil, views: layoutDict))
        viewSelectCategory.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[stackEv_nonEv]-10-|", options: [], metrics: nil, views: layoutDict))
        
        //--------> select Vehicle Type
        viewSelectVehicle_Type.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSelectVehicle_TypeTitle]-10-[VechicleTypeCollectionView(120)]|", options: [], metrics: nil, views: layoutDict))
        viewSelectVehicle_Type.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblSelectVehicle_TypeTitle]-10-|", options: [], metrics: nil, views: layoutDict))
        viewSelectVehicle_Type.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[VechicleTypeCollectionView]-10-|", options: [], metrics: nil, views: layoutDict))
        
        //--------> slect Vehicle Hint Brand
        viewSelectVehicle_Hint.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSelectVehicle_HintTitle]-10-[VechicleHintCollectionView(110)]|", options: [], metrics: nil, views: layoutDict))
        viewSelectVehicle_Hint.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblSelectVehicle_HintTitle]-10-|", options: [], metrics: nil, views: layoutDict))
        viewSelectVehicle_Hint.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[VechicleHintCollectionView]-10-|", options: [], metrics: nil, views: layoutDict))

        
        //--------> select Vehicle Model
        viewVechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVechicleModel]-10-[txtSelect_VehicleModel(60)]|", options: [], metrics: nil, views: layoutDict))
        viewVechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblVechicleModel]-10-|", options: [], metrics: nil, views: layoutDict))
        viewVechicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtSelect_VehicleModel]-10-|", options: [], metrics: nil, views: layoutDict))
        
        //--------> select Vehicle Manufacture Year
        viewVechicleManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVechicleManufactureYear]-10-[txtSelect_VehicleManufactureYear(60)]|", options: [], metrics: nil, views: layoutDict))
        viewVechicleManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblVechicleManufactureYear]-10-|", options: [], metrics: nil, views: layoutDict))
        viewVechicleManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtSelect_VehicleManufactureYear]-10-|", options: [], metrics: nil, views: layoutDict))
         
        //--------> Textfield or Enter Vehicle Number
        viewVechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVechicleNumber]-10-[txtSelect_VehicleNumber(60)]|", options: [], metrics: nil, views: layoutDict))
        viewVechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblVechicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        viewVechicleNumber.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtSelect_VehicleNumber]-10-|", options: [], metrics: nil, views: layoutDict))
        
        //--------> select Home Delivery or Garage pickup
        viewSelectHome_Garage.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSelectHome_GarageTitle]-10-[stackHome_Garage(50)]|", options: [], metrics: nil, views: layoutDict))
        viewSelectHome_Garage.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblSelectHome_GarageTitle]-10-|", options: [], metrics: nil, views: layoutDict))
        viewSelectHome_Garage.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[stackHome_Garage]-10-|", options: [], metrics: nil, views: layoutDict))
        
        //--------> select Garage Pickup
        viewSelectGarage_Checkbox.centerYAnchor.constraint(equalTo: viewSelectGarage_Pickup.centerYAnchor, constant: 0).isActive = true
        viewSelectGarage_Checkbox.heightAnchor.constraint(equalToConstant: 20).isActive = true
        lblviewSelectGarage_CheckboxTitle.centerYAnchor.constraint(equalTo: viewSelectGarage_Pickup.centerYAnchor, constant: 0).isActive = true
        viewSelectGarage_Pickup.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewSelectGarage_Checkbox(20)]-10-[lblviewSelectGarage_CheckboxTitle]|", options: [], metrics: nil, views: layoutDict))

        viewSelectGarage_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgGarageViewCheck]|", options: [], metrics: nil, views: layoutDict))
        viewSelectGarage_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgGarageViewCheck]|", options: [], metrics: nil, views: layoutDict))

        viewSelectGarage_Pickup.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnGaragePickupCheckbox]|", options: [], metrics: nil, views: layoutDict))
        viewSelectGarage_Pickup.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnGaragePickupCheckbox]|", options: [], metrics: nil, views: layoutDict))
        
        //--------> select Home Delivery
        viewSelectHome_Checkbox.centerYAnchor.constraint(equalTo: viewSelectHome_delivery.centerYAnchor, constant: 0).isActive = true
        viewSelectHome_Checkbox.heightAnchor.constraint(equalToConstant: 20).isActive = true
        lblviewSelectHome_CheckboxTitle.centerYAnchor.constraint(equalTo: viewSelectHome_delivery.centerYAnchor, constant: 0).isActive = true
        viewSelectHome_delivery.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewSelectHome_Checkbox(20)]-10-[lblviewSelectHome_CheckboxTitle]|", options: [], metrics: nil, views: layoutDict))

        viewSelectHome_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgHomeViewCheck]|", options: [], metrics: nil, views: layoutDict))
        viewSelectHome_Checkbox.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgHomeViewCheck]|", options: [], metrics: nil, views: layoutDict))

        viewSelectHome_delivery.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnHomePickupCheckbox]|", options: [], metrics: nil, views: layoutDict))
        viewSelectHome_delivery.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnHomePickupCheckbox]|", options: [], metrics: nil, views: layoutDict))
        
        //--------> Dummy View for ScrollView Height
        viewDummyForHeight.heightAnchor.constraint(equalToConstant: 60).isActive = true

        //--------> Button for Submit
        viewSubmitBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true
        viewSubmitBtn.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: 0).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewSubmitBtn]|", options: [], metrics: nil, views: layoutDict))

        btnSubmit.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btnSubmit.centerYAnchor.constraint(equalTo: viewSubmitBtn.centerYAnchor, constant: 0).isActive = true
        btnSubmit.centerXAnchor.constraint(equalTo: viewSubmitBtn.centerXAnchor, constant: 0).isActive = true
        viewSubmitBtn.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[btnSubmit]-10-|", options: [], metrics: nil, views: layoutDict))
        
        
        viewContent.layoutIfNeeded()
        viewContent.setNeedsLayout()
    
    }


}
