//
//  NavigationEnum.swift
//  SRNavigationControllerHelper
//
//  Created by Siamak Rostami on 1/5/24.
//

import Foundation
import UIKit

// MARK: - RightNavigationButtons

enum RightNavigationButtons {
    case support(tintColor: UIColor?)
    case settings(tintColor: UIColor?)
    case info(tintColor: UIColor?)

    // MARK: Internal

    var icon: UIImage? {
        switch self {
        case .support:
            return UIImage(systemName: "phone.fill.badge.plus")?.withRenderingMode(.alwaysTemplate)
        case .settings:
            return UIImage(systemName: "gearshape.fill")?.withRenderingMode(.alwaysTemplate)
        case .info:
            return UIImage(systemName: "info.circle.fill")?.withRenderingMode(.alwaysTemplate)
        }
    }
}

// MARK: - LeftNavigationButtons

enum LeftNavigationButtons {
    case back(type: BackStyle, tintColor: UIColor?)

    // MARK: Internal

    var icon: UIImage? {
        return UIImage(systemName: "chevron.left")?.withRenderingMode(.alwaysTemplate)
    }
}

// MARK: - BackStyle

enum BackStyle {
    case pop
    case popToRoot
    case popToViewController(class: AnyClass)
}
