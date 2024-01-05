//
//  NavigationEnum.swift
//  SRNavigationControllerHelper
//
//  Created by Siamak Rostami on 1/5/24.
//

import Foundation
import UIKit

// MARK: - SRNavigationItem

enum SRNavigationItem {
    case backButton(style: BackStyle, icon: UIImage?, tintColor: UIColor?)
    case button(tintColor: UIColor?, icon: UIImage?, action: Selector?)
    case customView(view: UIView?)
}

// MARK: - BackStyle

enum BackStyle {
    case pop
    case popToRoot
    case popToViewController(class: AnyClass)
}
