//
//  ThirdViewController.swift
//  SRNavigationControllerHelper
//
//  Created by Siamak Rostami on 1/5/24.
//

import UIKit

class ThirdViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        // Do any additional setup after loading the view.
    }
    
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        navigation.configureNavigationBar(isHidden: false,isTranslucent: true,prefersLargeTitles: true, leftItems: [.back(type: .pop, tintColor: .black)],title: "Third View Controller" ,rightItems: nil)
            .withCustomAppearance(backgroundColor: .lightGray)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
