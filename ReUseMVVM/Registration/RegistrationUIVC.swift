//
//  RegistrationUIVC.swift
//  ReUseMVVM
//
//  Created by Rashed Sahajee on 15/08/22.
//

import UIKit

protocol CommonUIVC: AnyObject {
    func setupUI()
}

class RegistrationUIVC: NSObject,  CommonUIVC{
    
    weak var view: RegistrationView?
    
    init(view: RegistrationView) {
        super.init()
        self.view = view
    }
    
    func setupUI() {
        setupHeading()
        setupButton()
        setupTextField()
    }
    
    func setupHeading() {
        view?.headingLabel.text = "Registration"
        view?.headingLabel.textColor = .red
    }
    func setupButton() {
        view?.registerButton.setTitle("Register", for: .normal)
        view?.registerButton.addTarget(self, action: #selector(didTapOnRegister), for: .touchUpInside)
        view?.backButton.setTitle("Back", for: .normal)
        view?.backButton.addTarget(self, action: #selector(didTapOnBack), for: .touchUpInside)
    }
    @objc func didTapOnBack() {
        self.view?.dismiss(animated: true)
    }
    @objc func didTapOnRegister() {
        print("I am RegisterUIVC")
    }
    func setupTextField(){
        guard let view = view else {
            return
        }
        self.setTextFields(textFields: view.firstName, placeholder: "First Name")
        self.setTextFields(textFields: view.lastName, placeholder: "Last Name")
        self.setTextFields(textFields: view.emailTF, placeholder: "Email")
        self.setTextFields(textFields: view.passwordTF, placeholder: "Password")
    }
    
    func setTextFields(textFields: UITextField, placeholder: String) {
        textFields.placeholder = placeholder
    }
}
