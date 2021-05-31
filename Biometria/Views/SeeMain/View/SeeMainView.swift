//
//  SeeMain.swift
//  Biometria
//
//  Created by Felipe Glautier  on 31/05/21.
//

import UIKit

protocol SeeMainViewDelegate: AnyObject {
    func buttonAction()
}

class SeeMainView: UIView {
    
    lazy var facialBiometricsButton: UIButton = {
        let button = UIButton()
            button.setTitle("Biometria Facial", for: .normal)
            button.setTitleColor(.black , for: .normal)
            button.backgroundColor = UIColor(hex: "#fcfcfc")
            button.layer.cornerRadius = 15
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(nil, action: #selector(close), for: .touchUpInside)
        
        return button
    }()
    
    @objc func close(sender: UIButton!) {
        self.delegate?.buttonAction()
    }
    
    weak var delegate: SeeMainViewDelegate?
    
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
       addSubview(facialBiometricsButton)
    backgroundColor = .white
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            facialBiometricsButton.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            facialBiometricsButton.widthAnchor.constraint(equalToConstant: 327),
            facialBiometricsButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            facialBiometricsButton.heightAnchor.constraint(equalToConstant: 47),
        ])
    }
 }




    

