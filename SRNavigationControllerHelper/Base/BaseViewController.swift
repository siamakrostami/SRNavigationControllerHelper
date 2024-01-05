//
//  BaseViewController.swift
//  SRNavigationControllerHelper
//
//  Created by Siamak Rostami on 1/5/24.
//

import UIKit

class BaseViewController: UIViewController {
    let navigation = NavigationBarBuilder()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigation.controller = self
        // Do any additional setup after loading the view.
    }
}
