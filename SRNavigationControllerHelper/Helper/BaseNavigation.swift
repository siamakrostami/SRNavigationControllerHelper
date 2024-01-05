//
//  BaseNavigation.swift
//  Navigation
//
//  Created by Siamak on 8/5/23.
//

import Foundation
import UIKit

// MARK: - BaseNavigation

class BaseNavigation: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultAppearance()
    }
}

extension BaseNavigation {
    func setDefaultAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = .clear
        appearance.shadowImage = nil
        appearance.backgroundColor = .systemBackground
        appearance.titleTextAttributes = [
            .font: UIFont.systemFont(ofSize: 18),
            .foregroundColor: UIColor.label,
        ]
        navigationBar.standardAppearance = appearance
        navigationBar.compactAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        if #available(iOS 15.0, *) {
            navigationBar.compactScrollEdgeAppearance = appearance
        }
    }

    func changeTheme(
        backgroundColor: UIColor?, font: UIFont? = nil, titleTextColor: UIColor? = nil, shadowColor: UIColor? = nil)
    {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = shadowColor ?? .clear
        appearance.shadowImage = nil
        appearance.backgroundColor = backgroundColor
        appearance.titleTextAttributes = [
            .font: font ?? UIFont.systemFont(ofSize: 18),
            .foregroundColor: titleTextColor ?? UIColor.label,
        ]
        navigationBar.standardAppearance = appearance
        navigationBar.compactAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        if #available(iOS 15.0, *) {
            navigationBar.compactScrollEdgeAppearance = appearance
        }
    }
}
