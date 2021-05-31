//
//  FacialBiometricsViewController.swift
//  Biometria
//
//  Created by Felipe Glautier  on 31/05/21.
//

import UIKit

class FacialBiometricsViewController : UIViewController, FacialBiometricsViewDelegate {
  
    let shareView = FacialBiometricsView()

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
                               title: " Biometria Facial"
        )
    }
        
    func buttonAction() {
        let home = RecommendationsViewController()
        self.navigationController?.pushViewController(home, animated:true)
    }
}
        
    
    

    
