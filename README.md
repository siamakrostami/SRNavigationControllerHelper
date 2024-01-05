# NavigationBuilder

## Overview

`NavigationBarBuilder` is a utility class designed to simplify the configuration of navigation bars in iOS applications. This class allows you to easily customize the appearance, visibility, and functionality of navigation bars, streamlining the process of creating a consistent user interface across your app.

### Integration

1. Copy the `BaseNavigation.swift` and `NavigationBarBuilder.swift` files into your Xcode project.
2. Set BaseNavigation as main UINavigationController inside sceneDelegate file.
```swift
      func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let scene = (scene as? UIWindowScene) else {
            return
        }
        let controller = FirstViewController()
        window = UIWindow(windowScene: scene)
        window?.rootViewController = BaseNavigation(rootViewController: controller)
        window?.makeKeyAndVisible()
    }
```

3. Import the class into your view controller or wherever you need to configure the navigation bar.

```swift
import UIKit
class BaseViewController: UIViewController {
    let navigation = NavigationBarBuilder()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigation.controller = self
        // Additional setup if needed.
    }
}
```
## Usage

```swift
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
```
