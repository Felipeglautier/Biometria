//
//  NavigationController.swift
//  Biometria
//
//  Created by Felipe Glautier  on 26/05/21.
//

import UIKit

extension UIViewController {
    
    func configureNavigationBar(
                                backgoundColor: UIColor,
                                tintColor: UIColor,
                                title: String
    ) {

            self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
            self.navigationController?.navigationBar.shadowImage = UIImage()
                 navigationController?.navigationBar.isTranslucent = false
                 navigationController?.navigationBar.tintColor = tintColor
                 navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
                 navigationItem.title = title
                 navigationController?.navigationBar.barTintColor = backgoundColor
                 navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(hex: "#639D31")]
    }
}


