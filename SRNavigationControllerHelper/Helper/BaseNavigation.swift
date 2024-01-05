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
    
    private var font: UIFont
    private var textColor: UIColor
    private var backGroundColor: UIColor
    
    init(rootViewController: UIViewController,font: UIFont, textColor: UIColor, backGroundColor: UIColor) {
        self.font = font
        self.textColor = textColor
        self.backGroundColor = backGroundColor
        super.init(rootViewController: rootViewController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BaseNavigation {
    private func setDefaultAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = .clear
        appearance.shadowImage = nil
        appearance.backgroundColor = backGroundColor
        appearance.titleTextAttributes = [
            .font: font,
            .foregroundColor: textColor,
        ]
        navigationBar.standardAppearance = appearance
        navigationBar.compactAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        if #available(iOS 15.0, *) {
            navigationBar.compactScrollEdgeAppearance = appearance
        }
    }
}
