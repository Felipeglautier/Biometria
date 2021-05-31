//
//  SuccessScreen .swift
//  Biometria
//
//  Created by Felipe Glautier  on 26/05/21.
//
import UIKit

class SucessScreenViewController: UIViewController, SucessScreenViewDelegate {
  
    let shareView = SuccessScreenView()


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
        let home = ViewController()
        self.navigationController?.pushViewController(home, animated:true)
    }
}
    
