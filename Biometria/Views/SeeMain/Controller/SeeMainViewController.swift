//
//  ViewController.swift
//  Biometria
//
//  Created by Felipe Glautier  on 21/05/21.
//

import UIKit

class SeeMainViewController: UIViewController, SeeMainViewDelegate {
  
    let shareView = SeeMainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    override func loadView() {
        view = shareView
        shareView.delegate = self
        view.backgroundColor = UIColor(hex: "#FFFFFF")
    }
        
    private func setupNavigationBar() {

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
             navigationController?.navigationBar.isTranslucent = false
             navigationController?.navigationBar.tintColor = UIColor(hex: "#639D31")
             navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
             navigationItem.title =  "Configurações"
             navigationController?.navigationBar.barTintColor = UIColor(hex: "#f5f5f5")
             navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(hex: "#639D31")]
        let backButtonNavigation = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: navigationController, action: nil)
            navigationItem.leftBarButtonItem = backButtonNavigation

    }
    
    func buttonAction() {
        let home = FacialBiometricsViewController()
        self.navigationController?.pushViewController(home, animated:true)
    }
}
    

