//
//  Selfie.swift
//  Biometria
//
//  Created by Felipe Glautier  on 25/05/21.
//

import UIKit

class SelfieViewController: UIViewController, SelfieViewDelegate {
  
    let shareView = SelfieView()

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
        configureNavigationBar(
                               backgoundColor: UIColor(hex: "#ffffff"),
                               tintColor: UIColor(hex: "#639D31"),
                               title: "Tire a sua foto"
        )
    }
    
    func buttonAction() {
        let home = SucessScreenViewController()
        self.navigationController?.pushViewController(home, animated:true)
    }        
}
    
