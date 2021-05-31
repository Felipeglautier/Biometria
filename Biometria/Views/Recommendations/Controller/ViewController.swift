//
//  ViewController.swift
//  Biometria
//
//  Created by Felipe Glautier  on 21/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var facialBiometricsButton: UIButton = {
        let button = UIButton()
        let backButtonNavigation = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButtonNavigation
            button.setTitle("Biometria Facial", for: .normal)
            button.setTitleColor(.black , for: .normal)
            button.backgroundColor = UIColor(hex: "#fcfcfc")
            button.layer.cornerRadius = 15
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(nil, action: #selector(facialBiometrics), for: .touchUpInside)
        
        return button
    }()
    
    @objc func facialBiometrics(sender: UIButton!) {
        let home = FacialBiometricsViewController()
        self.navigationController?.pushViewController(home, animated: true)
    }
    
    override func viewDidLoad() {
     super.viewDidLoad()
        setupNavigationBar()
        createSubviews()
        setupConstraints()
     }
     
     private func setupNavigationBar() {
         configureNavigationBar(
                                backgoundColor: UIColor(hex: "#F7F8FA"),
                                tintColor: UIColor(hex: "#639D31"),
                                title: "Configurações"
                               
                                
         )
     }
         
    func createSubviews() {
        view.addSubview(facialBiometricsButton)
        view.backgroundColor = .white
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            facialBiometricsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            facialBiometricsButton.widthAnchor.constraint(equalToConstant: 327),
            facialBiometricsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            facialBiometricsButton.heightAnchor.constraint(equalToConstant: 47),
        ])
    }
 }




    
