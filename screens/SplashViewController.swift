//
//  SplashViewController.swift
//  screens
//
//  Created by Diana Princess on 20.07.2021.
//

import UIKit

class SplashViewController: UIViewController {
    
    private let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
       override func viewDidLoad() {
          super.viewDidLoad()
          view.backgroundColor = UIColor.white
          view.addSubview(activityIndicator)
          activityIndicator.frame = view.bounds
          activityIndicator.backgroundColor = UIColor(white: 0, alpha: 0.4)
          makeServiceCall()
       }
       private func makeServiceCall() {
        activityIndicator.startAnimating()
           DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) {
              self.activityIndicator.stopAnimating()
            if UserDefaults.standard.bool(forKey: "LOGGED_IN") {
                     // navigate to protected page
                AppDelegate.shared.rootViewController.switchToMainScreen()
                  } else {
                     // navigate to login screen
                    AppDelegate.shared.rootViewController.switchToLogout()
                  }
       }
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

