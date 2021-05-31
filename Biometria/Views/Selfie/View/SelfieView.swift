//
//  SelfieView.swift
//  Biometria
//
//  Created by Felipe Glautier  on 28/05/21.
//

import UIKit

protocol SelfieViewDelegate: AnyObject {
    func buttonAction()
}

class SelfieView: UIView {
    
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
    
    @objc func successScreen(sender: UIButton!) {
        self.delegate?.buttonAction()
        
    }
    
    lazy var titleImagem: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Selfie"))
            imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    weak var delegate: SelfieViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubviews()
        setupConstraints()
    }

   func createSubviews() {
        addSubview(titleImagem)
        addSubview(takePicture)
        backgroundColor = .white
    }
        
        func setupConstraints() {
            NSLayoutConstraint.activate([

                titleImagem.topAnchor.constraint(equalTo: topAnchor, constant: -80),
                titleImagem.widthAnchor.constraint(equalToConstant: 300),
                titleImagem.centerXAnchor.constraint(equalTo: centerXAnchor),
                titleImagem.heightAnchor.constraint(equalToConstant: 500),
                    
                takePicture.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
                takePicture.widthAnchor.constraint(equalToConstant: 206),
                takePicture.centerXAnchor.constraint(equalTo: centerXAnchor),
                takePicture.heightAnchor.constraint(equalToConstant: 48),
     ])
    }
  }
