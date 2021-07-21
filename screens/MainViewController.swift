//
//  MainViewController.swift
//  screens
//
//  Created by Diana Princess on 20.07.2021.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray // to visually distinguish the protected part
              title = "Main Screen"
              let logoutButton = UIBarButtonItem(title: "Log Out", style: .plain, target: self, action: #selector(logout))
              navigationItem.setLeftBarButton(logoutButton, animated: true)
           }
           @objc
           private func logout() {
              // clear the user session (example only, not for the production)
              UserDefaults.standard.set(false, forKey: "LOGGED_IN")
              // navigate to the Main Screen
            AppDelegate.shared.rootViewController.switchToLogout()
        // Do any additional setup after loading the view.
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
