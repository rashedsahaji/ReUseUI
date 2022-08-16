//
//  ViewController.swift
//  ReUseMVVM
//
//  Created by Rashed Sahajee on 15/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Login: UIButton!
    @IBOutlet weak var registration: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Login.addTarget(self, action: #selector(didTapMainLogin), for: .touchUpInside)
        registration.addTarget(self, action: #selector(didTapOnMainRegistration), for: .touchUpInside)
    }
    
    @objc func didTapMainLogin() {
        let loginVc = Registration.initiateLogin()
        self.present(loginVc, animated: true)
    }
    
    @objc func didTapOnMainRegistration() {
        let register = Registration.initiateRegister()
        self.present(register, animated: true)
    }

}

