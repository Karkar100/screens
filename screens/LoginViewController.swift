//
//  LoginViewController.swift
//  screens
//
//  Created by Diana Princess on 20.07.2021.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
              title = "Login Screen"
              let loginButton = UIBarButtonItem(title: "Log In", style: .plain, target: self, action: #selector(login))
              navigationItem.setLeftBarButton(loginButton, animated: true)
           }
        @objc
           private func login() {
              // store the user session (example only, not for the production)
              UserDefaults.standard.set(true, forKey: "LOGGED_IN")
              // navigate to the Main Screen
            AppDelegate.shared.rootViewController.switchToMainScreen()
           }
        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
