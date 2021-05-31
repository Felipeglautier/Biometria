//
//  RecommendationsView.swift
//  Biometria
//
//  Created by Felipe Glautier  on 28/05/21.
//

import UIKit

protocol RecommendationsViewDelegate: AnyObject {
    func buttonAction()
}

class RecommendationsView: UIView {
    
    lazy var recommendations: UILabel = {
        let label = UILabel()
            label.numberOfLines = .max
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.textAlignment = .left
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
            label.textColor = UIColor(hex: "#639D31")
            label.text = "Recomendações"

        return label
    }()

    lazy var textExplanatory: UILabel = {
        let label = UILabel()
            label.numberOfLines = .max
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.textAlignment = .left
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
            label.textColor = UIColor(hex: "#505152")
            label.text = "Confira algumas dicas para tirar foto:"

        return label
    }()
    
    lazy var  firstExplanatoryTitle: UILabel = {
        let label = UILabel()
            label.numberOfLines = .max
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
            label.textColor = UIColor(hex: "#505152")
            label.text = "Vá para um local iluminado."

        return label
    }()
    
    lazy var secondExplanatoryTitle: UILabel = {
        let label = UILabel()
            label.numberOfLines = .max
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
            label.textColor = UIColor(hex: "#505152")
            label.text = "Centralize seu rosto no local indicado."
        
        return label
    }()
    
    lazy var thirdExplanatoryTitle: UILabel = {
        let label = UILabel()
            label.numberOfLines = .max
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
            label.textColor = UIColor(hex: "#505152")
            label.text = "Retire óculos, chapéus, bonés ou gorros."

        return label
    }()
    
    lazy var fourthExplanatoryTitle: UILabel = {
        let label = UILabel()
            label.numberOfLines = .max
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
            label.textColor = UIColor(hex: "#505152")
            label.text = "Evite sorrir e não use máscara."

        return label
    }()

    lazy var takePicture: UIButton = {
        let button = UIButton()
            button.setTitle("Tirar foto ", for: .normal)
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
    
    lazy var firstSquare: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Rectangle"))
            imageView.translatesAutoresizingMaskIntoConstraints = false
           
        return imageView
    }()
    
    lazy var secondSquare: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Rectangle3"))
            imageView.translatesAutoresizingMaskIntoConstraints = false
           
        return imageView
    }()
    
    lazy var thirdSquare: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Rectangle2"))
            imageView.translatesAutoresizingMaskIntoConstraints = false
           
        return imageView
    }()
    
    lazy var fourSquare: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Rectangle2"))
            imageView.translatesAutoresizingMaskIntoConstraints = false
           
        return imageView
    }()
    
    weak var delegate: RecommendationsViewDelegate?
    
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
        addSubview(recommendations)
        addSubview(textExplanatory)
        addSubview(firstExplanatoryTitle)
        addSubview(secondExplanatoryTitle)
        addSubview(thirdExplanatoryTitle)
        addSubview(fourthExplanatoryTitle)
        addSubview(firstSquare)
        addSubview(secondSquare)
        addSubview(thirdSquare)
        addSubview(fourSquare)
        addSubview(takePicture)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            recommendations.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            recommendations.widthAnchor.constraint(equalToConstant: 311),
            recommendations.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 22),
            recommendations.heightAnchor.constraint(equalToConstant: 24),

            textExplanatory.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            textExplanatory.widthAnchor.constraint(equalToConstant: 311),
            textExplanatory.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 22),
            textExplanatory.heightAnchor.constraint(equalToConstant: 24),
            
            firstExplanatoryTitle.topAnchor.constraint(equalTo: topAnchor, constant: 120),
            firstExplanatoryTitle.widthAnchor.constraint(equalToConstant: 287),
            firstExplanatoryTitle.leadingAnchor.constraint(equalTo: leadingAnchor),
            firstExplanatoryTitle.heightAnchor.constraint(equalToConstant: 24),
            
            secondExplanatoryTitle.topAnchor.constraint(equalTo: topAnchor, constant: 170),
            secondExplanatoryTitle.widthAnchor.constraint(equalToConstant: 287),
            secondExplanatoryTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            secondExplanatoryTitle.heightAnchor.constraint(equalToConstant: 24),
            
            thirdExplanatoryTitle.topAnchor.constraint(equalTo: topAnchor, constant: 220),
            thirdExplanatoryTitle.widthAnchor.constraint(equalToConstant: 287),
            thirdExplanatoryTitle.leadingAnchor.constraint(equalTo: thirdSquare.leadingAnchor, constant: 20),
            thirdExplanatoryTitle.heightAnchor.constraint(equalToConstant: 24),

            fourthExplanatoryTitle.topAnchor.constraint(equalTo: topAnchor, constant: 270),
            fourthExplanatoryTitle.widthAnchor.constraint(equalToConstant: 287),
            fourthExplanatoryTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            fourthExplanatoryTitle.heightAnchor.constraint(equalToConstant: 24),

            firstSquare.topAnchor.constraint(equalTo: topAnchor, constant: 128),
            firstSquare.widthAnchor.constraint(equalToConstant: 8),
            firstSquare.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 22),
            firstSquare.heightAnchor.constraint(equalToConstant: 8),
            
            secondSquare.topAnchor.constraint(equalTo: topAnchor, constant: 178),
            secondSquare.widthAnchor.constraint(equalToConstant: 8),
            secondSquare.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 22),
            secondSquare.heightAnchor.constraint(equalToConstant: 8),
            
            thirdSquare.topAnchor.constraint(equalTo: topAnchor, constant: 228),
            thirdSquare.widthAnchor.constraint(equalToConstant: 8),
            thirdSquare.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 22),
            thirdSquare.heightAnchor.constraint(equalToConstant: 8),
            
            fourSquare.topAnchor.constraint(equalTo: topAnchor, constant: 278),
            fourSquare.widthAnchor.constraint(equalToConstant: 8),
            fourSquare.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 22),
            fourSquare.heightAnchor.constraint(equalToConstant: 8),
            
            takePicture.bottomAnchor.constraint(equalTo:bottomAnchor, constant: -30),
            takePicture.widthAnchor.constraint(equalToConstant: 206),
            takePicture.centerXAnchor.constraint(equalTo: centerXAnchor),
            takePicture.heightAnchor.constraint(equalToConstant: 48),
        ])
    }
}
