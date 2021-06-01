//
//  SuccessScreenView.swift
//  Biometria
//
//  Created by Felipe Glautier  on 31/05/21.
//
import UIKit

protocol SucessScreenViewDelegate: AnyObject {
    func buttonAction()
}

class SuccessScreenView: UIView {

    lazy var takePicture: UIButton = {
        let button = UIButton()
            button.setTitle("Fechar", for: .normal)
            button.setTitleColor(UIColor(hex: "639D31") , for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(nil, action: #selector(close), for: .touchUpInside)

        return button
    }()
    
    @objc func close(sender: UIButton!) {
        self.delegate?.buttonAction()
    }
    
    
    lazy var cadrastoImage: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "cadrastro"))
            imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()
    
    lazy var vector: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Vector"))
            imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()

    weak var delegate: SucessScreenViewDelegate?
    
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
           addSubview(cadrastoImage)
            addSubview(takePicture)
            addSubview(vector)
            backgroundColor = .white
}
        
        func setupConstraints() {
            NSLayoutConstraint.activate([

                cadrastoImage.bottomAnchor.constraint(equalTo: takePicture.bottomAnchor, constant: -200),
                cadrastoImage.widthAnchor.constraint(equalToConstant: 280),
                cadrastoImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 27),
                cadrastoImage.heightAnchor.constraint(equalToConstant: 144),
                
                vector.bottomAnchor.constraint(equalTo: cadrastoImage.bottomAnchor, constant: -180),
                vector.widthAnchor.constraint(equalToConstant: 78),
                vector.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 27),
                vector.heightAnchor.constraint(equalToConstant: 72),
                
                takePicture.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
                takePicture.widthAnchor.constraint(equalToConstant: 206),
                takePicture.centerXAnchor.constraint(equalTo: centerXAnchor),
                takePicture.heightAnchor.constraint(equalToConstant: 48),
     ])
    }
  }

    
    

    

