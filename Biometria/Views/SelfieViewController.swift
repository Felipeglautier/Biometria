//
//  Selfie.swift
//  Biometria
//
//  Created by Felipe Glautier  on 25/05/21.
//

import UIKit

class Selfie: UIViewController {
    
    lazy var takePicture: UIButton = {
        let button = UIButton()
            button.setTitle("Prosseguir", for: .normal)
            button.setTitleColor(.white , for: .normal)
            button.backgroundColor = UIColor(hex: "#639D31")
            button.layer.cornerRadius = 23
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(nil, action: #selector(successScreen), for: .touchUpInside)

        return button
    }()
    
    lazy var titleImagem: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Selfie"))
            imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    @objc func successScreen(sender: UIButton!) {
        let home = SuccessScreen()
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
                                title: ""
         )
     }

        func createSubviews() {
            view.addSubview(titleImagem)
            view.addSubview(takePicture)
            view.backgroundColor = .white
    }
        
        func setupConstraints() {
            NSLayoutConstraint.activate([

                titleImagem.topAnchor.constraint(equalTo: view.topAnchor, constant: -80),
                titleImagem.widthAnchor.constraint(equalToConstant: 300),
                titleImagem.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                titleImagem.heightAnchor.constraint(equalToConstant: 500),
                
                takePicture.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
                takePicture.widthAnchor.constraint(equalToConstant: 206),
                takePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                takePicture.heightAnchor.constraint(equalToConstant: 48),
     ])
    }
  }

    
    

    

