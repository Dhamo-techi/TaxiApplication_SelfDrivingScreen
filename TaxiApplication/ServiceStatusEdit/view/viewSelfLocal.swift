//
//  viewSelfLocal.swift
//  TaxiApplication
//
//  Created by MAC PRO on 25/06/24.
//

import UIKit

class viewSelfLocal: UIView {
    
    var layoutDict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewDriverDetailsContentBase = UIStackView()
    var EmptyView = UIView()
    var lineimgBaseView = UIView()
    
    //HiddenDetails
    var viewdetailsbase = UIView()
    var stackviewDetails = UIStackView()

    var viewServiceTypesDetails = UIView()
    var viewServiceTypesDetailsTitle = UIView()
    var lblServiceTypesTitle = UILabel()
    var viewServiceTypes = UIView()
    var lblServiceTypes = UILabel()
    
    var viewSelect_GarageDetails = UIView()
    var viewSelect_GarageDetailsTitle = UIView()
    var lblSelect_GarageTitle = UILabel()
    var viewGarage = UIView()
    var lblGarage = UILabel()
    
    var viewAddressDetails = UIView()
    var viewAddressTitle = UIView()
    var lblAddressTitle = UILabel()
    var viewAddress = UIView()
    var lblAddress = UILabel()
    
    var viewFuel_TypeDetails = UIView()
    var viewFuel_TypeTitle = UIView()
    var lblFuel_TypeTitle = UILabel()
    var viewFuel_Type = UIView()
    var lblFuel_Type = UILabel()
    
    var viewVehicleCategoryDetails = UIView()
    var viewVehicleCategoryTitle = UIView()
    var lblVehicleCategoryTitle = UILabel()
    var viewVehicleCategory = UIView()
    var lblVehicleCategory = UILabel()
    
    var viewBrandDetails = UIView()
    var viewBrandTitle = UIView()
    var lblBrandTitle = UILabel()
    var viewBrand = UIView()
    var lblBrand = UILabel()
    
    var viewVehicleModelDetails = UIView()
    var viewVehicleModelTitle = UIView()
    var lblVehicleModelTitle = UILabel()
    var viewVehicleModel = UIView()
    var lblVehicleModel = UILabel()
    
    var viewManufactureYearDetails = UIView()
    var viewManufactureYearTitle = UIView()
    var lblManufactureYearTitle = UILabel()
    var viewManufactureYear = UIView()
    var lblManufactureYear = UILabel()
    
    
    var viewMoreBaseView = UIView()
    var viewMoreLblBaseView = UIView()
    var lblViewMoreDetails = UILabel()
    let downimgView = UIImageView()
    var btnviewMore = UIButton()



    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(base baseView: UIView){
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .gray
        layoutDict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        baseView.backgroundColor = .white
        
        viewDriverDetailsContentBase.translatesAutoresizingMaskIntoConstraints = false
        viewDriverDetailsContentBase.alignment = .fill
        viewDriverDetailsContentBase.axis = .vertical
        viewDriverDetailsContentBase.layer.cornerRadius = 8.0
        viewDriverDetailsContentBase.layer.masksToBounds = true
        viewDriverDetailsContentBase.spacing = 5
        layoutDict["viewDriverDetailsContentBase"] = viewDriverDetailsContentBase
        viewContent.addSubview(viewDriverDetailsContentBase)
        
        EmptyView.translatesAutoresizingMaskIntoConstraints = false
        EmptyView.backgroundColor = .white
        layoutDict["EmptyView"] = EmptyView
        viewDriverDetailsContentBase.addArrangedSubview(EmptyView)
        
        //------Hidden Details
        viewdetailsbase.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewdetailsbase"] = viewdetailsbase
        viewDriverDetailsContentBase.addArrangedSubview(viewdetailsbase)
        
        stackviewDetails.translatesAutoresizingMaskIntoConstraints = false
        stackviewDetails.axis = .vertical
        stackviewDetails.alignment = .fill
        stackviewDetails.spacing = 10
        layoutDict["stackviewDetails"] = stackviewDetails
        viewdetailsbase.addSubview(stackviewDetails)
        
        //----Service Types
        viewServiceTypesDetails.translatesAutoresizingMaskIntoConstraints = false
        viewServiceTypesDetails.backgroundColor = .clear
        layoutDict["viewServiceTypesDetails"] = viewServiceTypesDetails
        stackviewDetails.addArrangedSubview(viewServiceTypesDetails)
        
        viewServiceTypesDetailsTitle.translatesAutoresizingMaskIntoConstraints = false
        viewServiceTypesDetailsTitle.backgroundColor = .clear
        layoutDict["viewServiceTypesDetailsTitle"] = viewServiceTypesDetailsTitle
        viewServiceTypesDetails.addSubview(viewServiceTypesDetailsTitle)
        
        lblServiceTypesTitle.translatesAutoresizingMaskIntoConstraints = false
        lblServiceTypesTitle.text = "Service Types"
        lblServiceTypesTitle.textAlignment = .left
        lblServiceTypesTitle.textColor = .black
        lblServiceTypesTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        layoutDict["lblServiceTypesTitle"] = lblServiceTypesTitle
        viewServiceTypesDetailsTitle.addSubview(lblServiceTypesTitle)
        
        viewServiceTypes.translatesAutoresizingMaskIntoConstraints = false
        viewServiceTypes.backgroundColor = .clear
        layoutDict["viewServiceTypes"] = viewServiceTypes
        viewServiceTypesDetails.addSubview(viewServiceTypes)
        
        lblServiceTypes.translatesAutoresizingMaskIntoConstraints = false
        lblServiceTypes.text = ": Ride Later"
        lblServiceTypes.textAlignment = .left
        lblServiceTypes.textColor = .black
        lblServiceTypes.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblServiceTypes"] = lblServiceTypes
        viewServiceTypes.addSubview(lblServiceTypes)
        
        
        //----Select Garage DoorStep
        viewSelect_GarageDetails.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelect_GarageDetails"] = viewSelect_GarageDetails
        stackviewDetails.addArrangedSubview(viewSelect_GarageDetails)
        
        viewSelect_GarageDetailsTitle.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewSelect_GarageDetailsTitle"] = viewSelect_GarageDetailsTitle
        viewSelect_GarageDetails.addSubview(viewSelect_GarageDetailsTitle)
        
        lblSelect_GarageTitle.translatesAutoresizingMaskIntoConstraints = false
        lblSelect_GarageTitle.text = "Select Garage Doorstep pickup"
        lblSelect_GarageTitle.textAlignment = .left
        lblSelect_GarageTitle.textColor = .black
        lblSelect_GarageTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        layoutDict["lblSelect_GarageTitle"] = lblSelect_GarageTitle
        viewSelect_GarageDetailsTitle.addSubview(lblSelect_GarageTitle)
        
        viewGarage.translatesAutoresizingMaskIntoConstraints = false
        viewGarage.backgroundColor = .clear
        layoutDict["viewGarage"] = viewGarage
        viewSelect_GarageDetails.addSubview(viewGarage)
        
        lblGarage.translatesAutoresizingMaskIntoConstraints = false
        lblGarage.text = ": Home Service"
        lblGarage.textAlignment = .left
        lblGarage.textColor = .black
        lblGarage.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblGarage"] = lblGarage
        viewGarage.addSubview(lblGarage)
        
        
        //----Address
        viewAddressDetails.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewAddressDetails"] = viewAddressDetails
        stackviewDetails.addArrangedSubview(viewAddressDetails)
        
        viewAddressTitle.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewAddressTitle"] = viewAddressTitle
        viewAddressDetails.addSubview(viewAddressTitle)
        
        lblAddressTitle.translatesAutoresizingMaskIntoConstraints = false
        lblAddressTitle.text = "Address"
        lblAddressTitle.textAlignment = .left
        lblAddressTitle.textColor = .black
        lblAddressTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        layoutDict["lblAddressTitle"] = lblAddressTitle
        viewAddressTitle.addSubview(lblAddressTitle)
        
        viewAddress.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewAddress"] = viewAddress
        viewAddressDetails.addSubview(viewAddress)
        
        lblAddress.translatesAutoresizingMaskIntoConstraints = false
        lblAddress.text = ": null"
        lblAddress.textAlignment = .left
        lblAddress.textColor = .black
        lblAddress.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblAddress"] = lblAddress
        viewAddress.addSubview(lblAddress)
        
        
        
        //----Fuel_Type
        viewFuel_TypeDetails.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewFuel_TypeDetails"] = viewFuel_TypeDetails
        stackviewDetails.addArrangedSubview(viewFuel_TypeDetails)
        
        viewFuel_TypeTitle.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewFuel_TypeTitle"] = viewFuel_TypeTitle
        viewFuel_TypeDetails.addSubview(viewFuel_TypeTitle)
        
        lblFuel_TypeTitle.translatesAutoresizingMaskIntoConstraints = false
        lblFuel_TypeTitle.text = "Fuel Type"
        lblFuel_TypeTitle.textAlignment = .left
        lblFuel_TypeTitle.textColor = .black
        lblFuel_TypeTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        layoutDict["lblFuel_TypeTitle"] = lblFuel_TypeTitle
        viewFuel_TypeTitle.addSubview(lblFuel_TypeTitle)
        
        viewFuel_Type.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewFuel_Type"] = viewFuel_Type
        viewFuel_TypeDetails.addSubview(viewFuel_Type)
        
        lblFuel_Type.translatesAutoresizingMaskIntoConstraints = false
        lblFuel_Type.text = ": EV"
        lblFuel_Type.textAlignment = .left
        lblFuel_Type.textColor = .black
        lblFuel_Type.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblFuel_Type"] = lblFuel_Type
        viewFuel_Type.addSubview(lblFuel_Type)
        
        //----VehicleCategory
        viewVehicleCategoryDetails.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVehicleCategoryDetails"] = viewVehicleCategoryDetails
        stackviewDetails.addArrangedSubview(viewVehicleCategoryDetails)
        
        viewVehicleCategoryTitle.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVehicleCategoryTitle"] = viewVehicleCategoryTitle
        viewVehicleCategoryDetails.addSubview(viewVehicleCategoryTitle)
        
        lblVehicleCategoryTitle.translatesAutoresizingMaskIntoConstraints = false
        lblVehicleCategoryTitle.text = "VehicleCategory"
        lblVehicleCategoryTitle.textAlignment = .left
        lblVehicleCategoryTitle.textColor = .black
        lblVehicleCategoryTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        layoutDict["lblVehicleCategoryTitle"] = lblVehicleCategoryTitle
        viewVehicleCategoryTitle.addSubview(lblVehicleCategoryTitle)
        
        viewVehicleCategory.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVehicleCategory"] = viewVehicleCategory
        viewVehicleCategoryDetails.addSubview(viewVehicleCategory)
        
        lblVehicleCategory.translatesAutoresizingMaskIntoConstraints = false
        lblVehicleCategory.text = ": null"
        lblVehicleCategory.textAlignment = .left
        lblVehicleCategory.textColor = .black
        lblVehicleCategory.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblVehicleCategory"] = lblVehicleCategory
        viewVehicleCategory.addSubview(lblVehicleCategory)

        
        //----Brand
        viewBrandDetails.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewBrandDetails"] = viewBrandDetails
        stackviewDetails.addArrangedSubview(viewBrandDetails)
        
        viewBrandTitle.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewBrandTitle"] = viewBrandTitle
        viewBrandDetails.addSubview(viewBrandTitle)
        
        lblBrandTitle.translatesAutoresizingMaskIntoConstraints = false
        lblBrandTitle.text = "Brand"
        lblBrandTitle.textAlignment = .left
        lblBrandTitle.textColor = .black
        lblBrandTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        layoutDict["lblBrandTitle"] = lblBrandTitle
        viewBrandTitle.addSubview(lblBrandTitle)
        
        viewBrand.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewBrand"] = viewBrand
        viewBrandDetails.addSubview(viewBrand)
        
        lblBrand.translatesAutoresizingMaskIntoConstraints = false
        lblBrand.text = ": null"
        lblBrand.textAlignment = .left
        lblBrand.textColor = .black
        lblBrand.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblBrand"] = lblBrand
        viewBrand.addSubview(lblBrand)
        
        //----VehicleModel
        viewVehicleModelDetails.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVehicleModelDetails"] = viewVehicleModelDetails
        stackviewDetails.addArrangedSubview(viewVehicleModelDetails)
        
        viewVehicleModelTitle.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVehicleModelTitle"] = viewVehicleModelTitle
        viewVehicleModelDetails.addSubview(viewVehicleModelTitle)
        
        lblVehicleModelTitle.translatesAutoresizingMaskIntoConstraints = false
        lblVehicleModelTitle.text = "VehicleModel"
        lblVehicleModelTitle.textAlignment = .left
        lblVehicleModelTitle.textColor = .black
        lblVehicleModelTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        layoutDict["lblVehicleModelTitle"] = lblVehicleModelTitle
        viewVehicleModelTitle.addSubview(lblVehicleModelTitle)
        
        viewVehicleModel.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewVehicleModel"] = viewVehicleModel
        viewVehicleModelDetails.addSubview(viewVehicleModel)
        
        lblVehicleModel.translatesAutoresizingMaskIntoConstraints = false
        lblVehicleModel.text = ": null"
        lblVehicleModel.textAlignment = .left
        lblVehicleModel.textColor = .black
        lblVehicleModel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblVehicleModel"] = lblVehicleModel
        viewVehicleModel.addSubview(lblVehicleModel)
        
        
        //----ManufactureYear
        viewManufactureYearDetails.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewManufactureYearDetails"] = viewManufactureYearDetails
        stackviewDetails.addArrangedSubview(viewManufactureYearDetails)
        
        viewManufactureYearTitle.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewManufactureYearTitle"] = viewManufactureYearTitle
        viewManufactureYearDetails.addSubview(viewManufactureYearTitle)
        
        lblManufactureYearTitle.translatesAutoresizingMaskIntoConstraints = false
        lblManufactureYearTitle.text = "ManufactureYear"
        lblManufactureYearTitle.textAlignment = .left
        lblManufactureYearTitle.textColor = .black
        lblManufactureYearTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        layoutDict["lblManufactureYearTitle"] = lblManufactureYearTitle
        viewManufactureYearTitle.addSubview(lblManufactureYearTitle)
        
        viewManufactureYear.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewManufactureYear"] = viewManufactureYear
        viewManufactureYearDetails.addSubview(viewManufactureYear)
        
        lblManufactureYear.translatesAutoresizingMaskIntoConstraints = false
        lblManufactureYear.text = ": null"
        lblManufactureYear.textAlignment = .left
        lblManufactureYear.textColor = .black
        lblManufactureYear.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutDict["lblManufactureYear"] = lblManufactureYear
        viewManufactureYear.addSubview(lblManufactureYear)
        

        lineimgBaseView.translatesAutoresizingMaskIntoConstraints = false
        lineimgBaseView.backgroundColor = .black
        layoutDict["lineimgBaseView"] = lineimgBaseView
        viewDriverDetailsContentBase.addArrangedSubview(lineimgBaseView)
        
        viewMoreBaseView.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewMoreBaseView"] = viewMoreBaseView
        viewDriverDetailsContentBase.addArrangedSubview(viewMoreBaseView)
        
        viewMoreLblBaseView.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["viewMoreLblBaseView"] = viewMoreLblBaseView
        viewMoreBaseView.addSubview(viewMoreLblBaseView)
        
        lblViewMoreDetails.translatesAutoresizingMaskIntoConstraints = false
        lblViewMoreDetails.text = "view_more_details"
        lblViewMoreDetails.textAlignment = .left
        lblViewMoreDetails.textColor = .black
        lblViewMoreDetails.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        layoutDict["lblViewMoreDetails"] =  lblViewMoreDetails
        viewMoreLblBaseView.addSubview(lblViewMoreDetails)
        
        
        downimgView.translatesAutoresizingMaskIntoConstraints = false
        downimgView.image = UIImage(named: "downArrowLight")
        downimgView.contentMode = .scaleAspectFit
        layoutDict["downimgView"] = downimgView
        viewMoreLblBaseView.addSubview(downimgView)

        btnviewMore.translatesAutoresizingMaskIntoConstraints = false
        layoutDict["btnviewMore"] = btnviewMore
        viewMoreBaseView.addSubview(btnviewMore)


        
        
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutDict))
        
        viewDriverDetailsContentBase.centerXAnchor.constraint(equalTo: viewContent.centerXAnchor, constant: 0).isActive = true
        viewDriverDetailsContentBase.centerYAnchor.constraint(equalTo: viewContent.centerYAnchor, constant: 0).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewDriverDetailsContentBase]-10-|", options: [], metrics: nil, views: layoutDict))

        EmptyView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        lineimgBaseView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        //----Hidden Details
        
        viewdetailsbase.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[stackviewDetails]|", options: [], metrics: nil, views: layoutDict))
        viewdetailsbase.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[stackviewDetails]|", options: [], metrics: nil, views: layoutDict))
        
        //----ServiceTypes
        viewServiceTypesDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewServiceTypesDetailsTitle]|", options: [], metrics: nil, views: layoutDict))
        viewServiceTypesDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewServiceTypes]|", options: [], metrics: nil, views: layoutDict))
        viewServiceTypesDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewServiceTypesDetailsTitle]-5-[viewServiceTypes(150)]|", options: [], metrics: nil, views: layoutDict))
        
        //ServiceTypes Title Label Constrains
        viewServiceTypesDetailsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblServiceTypesTitle]|", options: [], metrics: nil, views: layoutDict))
        viewServiceTypesDetailsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblServiceTypesTitle]|", options: [], metrics: nil, views: layoutDict))
        
        //ServiceTypes Detail Label Constrains
        viewServiceTypes.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblServiceTypes]|", options: [], metrics: nil, views: layoutDict))
        viewServiceTypes.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblServiceTypes]|", options: [], metrics: nil, views: layoutDict))
        
        
        //----Select_Garage
        viewSelect_GarageDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewSelect_GarageDetailsTitle]|", options: [], metrics: nil, views: layoutDict))
        viewSelect_GarageDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewGarage]|", options: [], metrics: nil, views: layoutDict))
        viewSelect_GarageDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewSelect_GarageDetailsTitle]-5-[viewGarage(150)]|", options: [], metrics: nil, views: layoutDict))
        
        //Select_Garage Title Label Constrains
        viewSelect_GarageDetailsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSelect_GarageTitle]|", options: [], metrics: nil, views: layoutDict))
        viewSelect_GarageDetailsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblSelect_GarageTitle]|", options: [], metrics: nil, views: layoutDict))
        
        //Select_Garage Detail Label Constrains
        viewGarage.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblGarage]|", options: [], metrics: nil, views: layoutDict))
        viewGarage.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblGarage]|", options: [], metrics: nil, views: layoutDict))
        
        
        //----Address
        viewAddressDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewAddressTitle]|", options: [], metrics: nil, views: layoutDict))
        viewAddressDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewAddress]|", options: [], metrics: nil, views: layoutDict))
        viewAddressDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewAddressTitle]-5-[viewAddress(150)]|", options: [], metrics: nil, views: layoutDict))
        
        //Address Title Label Constrains
        viewAddressTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblAddressTitle]|", options: [], metrics: nil, views: layoutDict))
        viewAddressTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblAddressTitle]|", options: [], metrics: nil, views: layoutDict))
        
        //Address Detail Label Constrains
        viewAddress.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblAddress]|", options: [], metrics: nil, views: layoutDict))
        viewAddress.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblAddress]|", options: [], metrics: nil, views: layoutDict))
        
        //----Fuel_Type
        viewFuel_TypeDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewFuel_TypeTitle]|", options: [], metrics: nil, views: layoutDict))
        viewFuel_TypeDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewFuel_Type]|", options: [], metrics: nil, views: layoutDict))
        viewFuel_TypeDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewFuel_TypeTitle]-5-[viewFuel_Type(150)]|", options: [], metrics: nil, views: layoutDict))
        
        //Fuel_Type Title Label Constrains
        viewFuel_TypeTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblFuel_TypeTitle]|", options: [], metrics: nil, views: layoutDict))
        viewFuel_TypeTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblFuel_TypeTitle]|", options: [], metrics: nil, views: layoutDict))
        
        //Fuel_Type Detail Label Constrains
        viewFuel_Type.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblFuel_Type]|", options: [], metrics: nil, views: layoutDict))
        viewFuel_Type.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblFuel_Type]|", options: [], metrics: nil, views: layoutDict))

        
        //----VehicleCategory
        viewVehicleCategoryDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewVehicleCategoryTitle]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleCategoryDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewVehicleCategory]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleCategoryDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewVehicleCategoryTitle]-5-[viewVehicleCategory(150)]|", options: [], metrics: nil, views: layoutDict))
        
        //VehicleCategory Title Label Constrains
        viewVehicleCategoryTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVehicleCategoryTitle]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleCategoryTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblVehicleCategoryTitle]|", options: [], metrics: nil, views: layoutDict))
        
        //VehicleCategory Detail Label Constrains
        viewVehicleCategory.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVehicleCategory]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleCategory.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblVehicleCategory]|", options: [], metrics: nil, views: layoutDict))

        
        //----Brand
        viewBrandDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewBrandTitle]|", options: [], metrics: nil, views: layoutDict))
        viewBrandDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewBrand]|", options: [], metrics: nil, views: layoutDict))
        viewBrandDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewBrandTitle]-5-[viewBrand(150)]|", options: [], metrics: nil, views: layoutDict))
        
        //Brand Title Label Constrains
        viewBrandTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblBrandTitle]|", options: [], metrics: nil, views: layoutDict))
        viewBrandTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblBrandTitle]|", options: [], metrics: nil, views: layoutDict))
        
        //Brand Detail Label Constrains
        viewBrand.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblBrand]|", options: [], metrics: nil, views: layoutDict))
        viewBrand.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblBrand]|", options: [], metrics: nil, views: layoutDict))
        
        
        //----VehicleModel
        viewVehicleModelDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewVehicleModelTitle]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleModelDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewVehicleModel]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleModelDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewVehicleModelTitle]-5-[viewVehicleModel(150)]|", options: [], metrics: nil, views: layoutDict))
        
        //VehicleModel Title Label Constrains
        viewVehicleModelTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVehicleModelTitle]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleModelTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblVehicleModelTitle]|", options: [], metrics: nil, views: layoutDict))
        
        //VehicleModel Detail Label Constrains
        viewVehicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblVehicleModel]|", options: [], metrics: nil, views: layoutDict))
        viewVehicleModel.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblVehicleModel]|", options: [], metrics: nil, views: layoutDict))
        
        
        //----ManufactureYear
        viewManufactureYearDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewManufactureYearTitle]|", options: [], metrics: nil, views: layoutDict))
        viewManufactureYearDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewManufactureYear]|", options: [], metrics: nil, views: layoutDict))
        viewManufactureYearDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewManufactureYearTitle]-5-[viewManufactureYear(150)]|", options: [], metrics: nil, views: layoutDict))
        
        //ManufactureYear Title Label Constrains
        viewManufactureYearTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblManufactureYearTitle]|", options: [], metrics: nil, views: layoutDict))
        viewManufactureYearTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblManufactureYearTitle]|", options: [], metrics: nil, views: layoutDict))
        
        //ManufactureYear Detail Label Constrains
        viewManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblManufactureYear]|", options: [], metrics: nil, views: layoutDict))
        viewManufactureYear.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblManufactureYear]|", options: [], metrics: nil, views: layoutDict))
        
        
        //---- View More/Less Button
        viewMoreLblBaseView.centerXAnchor.constraint(equalTo: viewMoreBaseView.centerXAnchor, constant: 0).isActive = true
        viewMoreLblBaseView.centerYAnchor.constraint(equalTo: viewMoreBaseView.centerYAnchor, constant: 0).isActive = true
        
        viewMoreLblBaseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblViewMoreDetails]|", options: [], metrics: nil, views: layoutDict))
        viewMoreLblBaseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[downimgView]|", options: [], metrics: nil, views: layoutDict))
        viewMoreLblBaseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblViewMoreDetails]-5-[downimgView]|", options: [], metrics: nil, views: layoutDict))
        


        viewMoreBaseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnviewMore]|", options: [], metrics: nil, views: layoutDict))
        viewMoreBaseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnviewMore]|", options: [], metrics: nil, views: layoutDict))
        



    }
}
