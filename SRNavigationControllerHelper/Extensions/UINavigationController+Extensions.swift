//
//  UINavigationController+Extensions.swift
//  SRNavigationControllerHelper
//
//  Created by Siamak Rostami on 1/5/24.
//

import Foundation
import UIKit

extension UINavigationController {
    func popToViewController(ofClass: AnyClass, animated: Bool = true) {
        if let vc = viewControllers.last(where: { $0.isKind(of: ofClass) }) {
            popToViewController(vc, animated: animated)
        }
    }
}
