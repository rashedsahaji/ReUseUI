//
//  LoginUIVC.swift
//  ReUseMVVM
//
//  Created by Rashed Sahajee on 15/08/22.
//

import UIKit

class LoginUIVC: RegistrationUIVC {
    
    override func setupUI() {
        view?.firstName.isHidden = true
        view?.lastName.isHidden = true
        setupHeading()
        setupButton()
        setupTextField()
    }
    
    override func setupHeading() {
        view?.headingLabel.text = "Login"
        view?.headingLabel.textColor = .green
    }
    override func setupButton() {
        view?.registerButton.setTitle("Login", for: .normal)
        view?.registerButton.addTarget(self, action: #selector(didTapOnRegister), for: .touchUpInside)
        view?.backButton.setTitle("Back", for: .normal)
        view?.backButton.addTarget(self, action: #selector(didTapOnBack), for: .touchUpInside)
    }
    @objc override func didTapOnBack() {
        self.view?.dismiss(animated: true)
    }
    @objc override func didTapOnRegister() {
        print("I am LoginUIVC")
    }
    override func setupTextField(){
        
        guard let view = view else {return}
        
        setTextFields(textFields: view.emailTF, placeholder: "Enter Email Here")
        setTextFields(textFields: view.passwordTF, placeholder: "Enter Password Here")
    }
}
