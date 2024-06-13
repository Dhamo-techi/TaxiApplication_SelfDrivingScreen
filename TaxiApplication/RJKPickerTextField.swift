//
//  RJKPickerTextField.swift
//  TapNGo Driver
//
//  Created by Admin on 04/04/18.
//  Copyright © 2018 nPlus. All rights reserved.
//

import UIKit

class RJKPickerTextField: UITextField {
    
    enum TextfieldType
    {
        case datePicker
        case pickerView
    }
    private var currentTextfieldType:TextfieldType = .datePicker
    let datePicker = UIDatePicker()
    let dateFormatter = DateFormatter()
    let pickerView = UIPickerView()
    var pickerTitle = "- Select -"
    var itemList = [String]()
    
    
    init(_ type:TextfieldType) {
        super.init(frame: .zero)
        self.currentTextfieldType = .datePicker
    }
    internal override init(frame: CGRect) {
        super.init(frame: frame)
    }
    internal required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: - TextField Edit Action
    
    @objc func textEdited(_ sender:RJKPickerTextField)
    {
        if self.currentTextfieldType == .datePicker
        {
            self.text = dateFormatter.string(from: datePicker.date)
        }
        else
        {
            self.text = pickerView.selectedRow(inComponent: 0) == 0 ? "" : itemList[pickerView.selectedRow(inComponent: 0)-1]
        }
    }
    
    //MARK: - TextField Edit Begin Action
    
    @objc func editingBegin(_ sender:RJKPickerTextField)
    {
        if self.currentTextfieldType == .pickerView
        {
            
        }
        else
        {
            if let date = dateFormatter.date(from: self.text!)
            {
                self.datePicker.date = date
            }
            else
            {
                self.datePicker.date = Date()
                self.text = dateFormatter.string(from: self.datePicker.date)
            }
        }
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        }
        self.tintColor = UIColor.clear
        self.addTarget(self, action: #selector(textEdited(_:)), for: .editingChanged)
        self.addTarget(self, action: #selector(editingBegin(_:)), for: .editingDidBegin)
        if currentTextfieldType == .datePicker
        {
            datePicker.datePickerMode = .date
            datePicker.addTarget(self, action: #selector(dateChanged(_:)), for: .valueChanged)
            self.inputView = datePicker
        }
        else
        {
            pickerView.delegate = self
            pickerView.dataSource = self
            self.inputView = pickerView
        }
    }
    @objc func dateChanged(_ sender:UIDatePicker)
    {
        self.text = dateFormatter.string(from: sender.date)
    }
    func changeTextFieldType(_ type:TextfieldType)
    {
        self.currentTextfieldType = type
        if currentTextfieldType == .datePicker
        {
            datePicker.datePickerMode = .date
            datePicker.addTarget(self, action: #selector(dateChanged(_:)), for: .valueChanged)
            self.inputView = datePicker
        }
        else
        {
            pickerView.delegate = self
            pickerView.dataSource = self
            self.inputView = pickerView
        }
    }
    func configureDatePicker(_ minDate:Date?,maxDate:Date?,dateFormat:String?)
    {
        if let minDate = minDate
        {
            self.datePicker.minimumDate = minDate
        }
        if let maxDate = maxDate
        {
            self.datePicker.maximumDate = maxDate
        }
        if let dateFormat = dateFormat
        {
            dateFormatter.dateFormat = dateFormat
        }
    }
    
}

//MARK: - Adding PickerView Delegate

extension RJKPickerTextField:UIPickerViewDelegate,UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return itemList.count + 1
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let title = row == 0 ?  pickerTitle : itemList[row-1]
        return NSAttributedString(string: title, attributes: [NSAttributedString.Key.foregroundColor:row == 0 ? UIColor.gray : UIColor.black])
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.text = row == 0 ? "" : itemList[row-1]
    }
}

//MARK: -Adding DropDown

extension UITextField {
    func addDropDown(text: String, image: String) {
        
        self.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        self.textColor = .black
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        self.layer.cornerRadius = 4
        self.layer.borderWidth = 1
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height)
        
        let btn = UIButton()
        btn.setImage(UIImage(named: image), for: .normal)
        btn.addTarget(self, action: #selector(btnPressed(_ :)), for: .touchUpInside)
        btn.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        
        leftViewMode = .always
        leftView = view
        
        rightViewMode = .always
        rightView = btn
    }
    @objc func btnPressed(_ sender: UIButton) {
        self.becomeFirstResponder()
    }
    
    
    //Select Car Model Textfield DropDown
    func addDropDownSelectCarModel(text: String, image: String, carimage: String) {
        
        self.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        self.textColor = .black
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        self.layer.cornerRadius = 4
        self.layer.borderWidth = 1
        
        let leftViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: self.frame.size.height))
        let imgView = UIImageView(image: UIImage(named: text))
        imgView.frame = CGRect(x: 10, y: 0, width: 50, height: 50)
        imgView.image = UIImage(named: carimage)
        imgView.layer.cornerRadius = 25
        imgView.layer.masksToBounds = true
        imgView.contentMode = .scaleAspectFit
        leftViewContainer.addSubview(imgView)
        
        imgView.centerXAnchor.constraint(equalTo: leftViewContainer.centerXAnchor, constant: 0).isActive = true
        imgView.centerYAnchor.constraint(equalTo: leftViewContainer.centerYAnchor, constant: 0).isActive = true
        imgView.widthAnchor.constraint(equalToConstant: 50).isActive = true

        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: image), for: .normal)
        btn.addTarget(self, action: #selector(btnSelectCarModelPressed(_:)), for: .touchUpInside)
        btn.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        
        let rightViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: self.frame.size.height))
        btn.center = rightViewContainer.center
        rightViewContainer.addSubview(btn)
        
        self.leftViewMode = .always
        self.leftView = leftViewContainer
        
        self.rightViewMode = .always
        self.rightView = rightViewContainer
    }
    @objc func btnSelectCarModelPressed(_ sender: UIButton) {
        self.becomeFirstResponder()
    }
}
