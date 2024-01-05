//
//  FirstViewController.swift
//  SRNavigationControllerHelper
//
//  Created by Siamak Rostami on 1/5/24.
//

import UIKit

// MARK: - FirstViewController

class FirstViewController: BaseViewController {
    // MARK: Internal

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        layoutView()

        // Do any additional setup after loading the view.
    }
    
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        navigation.configureNavigationBar(isHidden: false, leftItems: nil, rightItems: nil)
            .withDefaultAppearance()
    }

    // MARK: Private

    private lazy var button: UIButton = {
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] _ in
            let controller = SecondViewController()
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

extension FirstViewController {
    private func layoutView() {
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 48).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
    }
}
