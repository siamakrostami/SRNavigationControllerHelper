//
//  SecondViewController.swift
//  SRNavigationControllerHelper
//
//  Created by Siamak Rostami on 1/5/24.
//

import UIKit

// MARK: - SecondViewController

class SecondViewController: BaseViewController {
    // MARK: Internal

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        layoutView()

        // Do any additional setup after loading the view.
    }

    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        navigation.configureNavigationBar(isHidden: false, leftItems: [.back(type: .pop, tintColor: .systemBlue)],logo: "batman", rightItems: nil)
            .withCustomAppearance(backgroundColor: .red)
    }

    // MARK: Private

    private lazy var button: UIButton = {
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] _ in
            let controller = ThirdViewController()
            self?.navigationController?.pushViewController(controller, animated: true)
        }))
        button.setTitle("Navigate", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        return button
    }()
}

extension SecondViewController {
    private func layoutView() {
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 48).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
    }
}
