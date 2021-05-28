//
//  SetupScreen.swift
//  Biometria
//
//  Created by Felipe Glautier  on 27/05/21.
//

import UIKit

class FacialBiometrics: UIViewController {

    lazy var introductionLabel: UILabel = {
        let label = UILabel()
            label.numberOfLines = .max
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
            label.textColor = UIColor(hex: "#505152")
            label.text = " Agora, Você pode cadrastar a sua biometria facial."

        return label
    }()
    
    lazy var textExplanatory: UILabel = {
        let label = UILabel()
            label.numberOfLines = .max
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
            label.textColor = UIColor(hex: "#505152")
            label.text = " Ela será usada como uma camada a mais de segurança e para validar as suas operações."

        return label
    }()
    
    lazy var startButoon: UIButton = {
        let button = UIButton()
            button.setTitle("Começar", for: .normal)
            button.setTitleColor(.white , for: .normal)
            button.backgroundColor = UIColor(hex: "#639D31")
            button.layer.cornerRadius = 23
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(nil, action: #selector(recommendations), for: .touchUpInside)
            

        return button
    }()
    
    lazy var securityImage: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Icone Segurança"))
            imageView.translatesAutoresizingMaskIntoConstraints = false
           
        return imageView
    }()
    
    @objc func recommendations(sender: UIButton!) {
        let home = RecommendationsViewController()
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
                               backgoundColor: UIColor(hex: "#ffffff"),
                               tintColor: UIColor(hex: "#639D31"),
                               title: "Biometria Facial"
        )
    }

   func createSubviews() {
    
    view.addSubview(introductionLabel)
    view.addSubview(textExplanatory)
    view.addSubview(startButoon)
    view.addSubview(securityImage)
    view.backgroundColor = .white
   }
   
   func setupConstraints() {
       NSLayoutConstraint.activate([
   
        introductionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 170),
        introductionLabel.widthAnchor.constraint(equalToConstant: 327),
        introductionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        introductionLabel.heightAnchor.constraint(equalToConstant: 60),
                
        textExplanatory.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
        textExplanatory.widthAnchor.constraint(equalToConstant: 311),
        textExplanatory.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        textExplanatory.heightAnchor.constraint(equalToConstant: 48),

        startButoon.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
        startButoon.widthAnchor.constraint(equalToConstant: 206),
        startButoon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        startButoon.heightAnchor.constraint(equalToConstant: 48),
        
        securityImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 53),
        securityImage.widthAnchor.constraint(equalToConstant: 62),
        securityImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        securityImage.heightAnchor.constraint(equalToConstant: 62),
       ])
   }

}


