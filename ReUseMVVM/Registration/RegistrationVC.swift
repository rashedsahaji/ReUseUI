//
//  Registration.swift
//  ReUseMVVM
//
//  Created by Rashed Sahajee on 15/08/22.
//

import UIKit

protocol RegistrationView: UIViewController {
    var headingLabel: UILabel! {get set}
    var registerButton: UIButton! {get set}
    var passwordTF: UITextField! {get set}
    var emailTF: UITextField! {get set}
    var lastName: UITextField! {get set}
    var firstName: UITextField! {get set}
    var backButton: UIButton! {get set}
}

class Registration: UIViewController, RegistrationView {
    
    var uiVC: CommonUIVC!

    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiVC.setupUI()
    }
    
    class func initiateRegister() -> Registration {
        let vc = UIStoryboard.registration.instanceOf(viewController: Registration.self)!
        vc.uiVC = RegistrationUIVC(view: vc)
        return vc
    }
    
    class func initiateLogin() -> Registration {
        let vc = UIStoryboard.registration.instanceOf(viewController: Registration.self)!
        vc.uiVC = LoginUIVC(view: vc)
        return vc
    }
    

}
