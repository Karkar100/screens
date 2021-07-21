//
//  ViewController.swift
//  screens
//
//  Created by Diana Princess on 20.07.2021.
//

import UIKit

class RootViewController: UIViewController {
    private var current: UIViewController
    init() {
          self.current = SplashViewController()
          super.init(nibName: nil, bundle: nil)
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(current)               // 1
        current.view.frame = view.bounds// 2
        view.addSubview(current.view)   // 3
        current.didMove(toParent: self) // 4
        // Do any additional setup after loading the view.
    }
    func showLoginScreen() {
      
          let new = UINavigationController(rootViewController: LoginViewController())                               // 1
        addChild(new)                    // 2
          new.view.frame = view.bounds                   // 3
          view.addSubview(new.view)                      // 4
        new.didMove(toParent: self)      // 5
        current.willMove(toParent: nil)  // 6
          current.view.removeFromSuperview()          // 7
        current.removeFromParent()       // 8
          current = new                                  // 9
       }
    func switchToMainScreen() {
       let mainViewController = MainViewController()
       let new = UINavigationController(rootViewController: mainViewController)
        animateFadeTransition(to: new)
    }
    private func animateFadeTransition(to new: UIViewController, completion: (() -> Void)? = nil) {
        current.willMove(toParent: nil)
        addChild(new)
       
       transition(from: current, to: new, duration: 0.3, options: [.transitionCrossDissolve, .curveEaseOut], animations: {
       }) { completed in
        self.current.removeFromParent()
        new.didMove(toParent: self)
            self.current = new
            completion?()  //1
       }
    }
    func switchToLogout() {
       let loginViewController = LoginViewController()
       let logoutScreen = UINavigationController(rootViewController: loginViewController)
       animateFadeTransition(to: logoutScreen)
    }

}

