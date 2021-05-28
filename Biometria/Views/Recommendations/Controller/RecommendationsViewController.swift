//
//  Recommendations.swift
//  Biometria
//
//  Created by Felipe Glautier  on 21/05/21.
//

import UIKit

class RecommendationsViewController: UIViewController, RecommendationsViewDelegate {
  
    let shareView = RecommendationsView()

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
                               title: ""
        )
    }
    
    func selfie() {
        let home = Selfie()
        self.navigationController?.pushViewController(home, animated:true)
    }
        
}
    
