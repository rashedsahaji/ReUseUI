//
//  Storyboard.swift
//  ReUseMVVM
//
//  Created by Rashed Sahajee on 15/08/22.
//

import Foundation
import UIKit

extension UIStoryboard {
    static let registration = UIStoryboard(name : "Registration", bundle: .main)

    func instanceOf<T: UIViewController>(viewController: T.Type) -> T? {
        let x = String(describing: viewController.self)
        let vc = self.instantiateViewController(withIdentifier: x) as? T
        vc?.modalPresentationStyle = .fullScreen
        return vc
    }
}
