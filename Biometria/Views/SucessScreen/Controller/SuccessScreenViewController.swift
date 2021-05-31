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

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
             navigationController?.navigationBar.isTranslucent = false
             navigationController?.navigationBar.tintColor = UIColor(hex: "#639D31")
             navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
             navigationItem.title =  ""
             navigationController?.navigationBar.barTintColor = UIColor(hex: "#ffffff")
             navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(hex: "#639D31")]
        
        let backButton = UIBarButtonItem(title: "X", style: UIBarButtonItem.Style.plain, target: self, action: #selector(buttonAction))
            navigationItem.rightBarButtonItem = backButton
        let backButtonNavigation = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: navigationController, action: nil)
            navigationItem.leftBarButtonItem = backButtonNavigation
    }
    
    @objc func buttonAction() {
        let home = SeeMainViewController()
        self.navigationController?.pushViewController(home, animated:true)
        

    }
}
    
