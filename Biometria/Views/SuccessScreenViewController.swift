//
//  SuccessScreen .swift
//  Biometria
//
//  Created by Felipe Glautier  on 26/05/21.
//
import UIKit

class SuccessScreen: UIViewController {

    lazy var takePicture: UIButton = {
        let button = UIButton()
        let backbutton = UIImageView()
        let backButton = UIBarButtonItem(title: "X", style: UIBarButtonItem.Style.plain, target: self, action: #selector(viewController))
            navigationItem.rightBarButtonItem = backButton
        let backButtonNavigation = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButtonNavigation
            backbutton.backgroundColor = .red
            button.setTitle("Fechar", for: .normal)
            button.setTitleColor(UIColor(hex: "639D31") , for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(nil, action: #selector(viewController), for: .touchUpInside)

        return button
    }()
    
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
    
    @objc func viewController(sender: UIButton!) {
        let home = ViewController()
        self.navigationController?.pushViewController(home, animated: true)
    }

    override func viewDidLoad() {
     super.viewDidLoad()
        
        createSubviews()
        setupConstraints()
     }

        func createSubviews() {
            view.addSubview(cadrastoImage)
            view.addSubview(takePicture)
            view.addSubview(vector)
            view.backgroundColor = .white
}
        
        func setupConstraints() {
            NSLayoutConstraint.activate([

                cadrastoImage.bottomAnchor.constraint(equalTo: takePicture.bottomAnchor, constant: -200),
                cadrastoImage.widthAnchor.constraint(equalToConstant: 280),
                cadrastoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
                cadrastoImage.heightAnchor.constraint(equalToConstant: 144),
                
                vector.bottomAnchor.constraint(equalTo: cadrastoImage.bottomAnchor, constant: -180),
                vector.widthAnchor.constraint(equalToConstant: 78),
                vector.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
                vector.heightAnchor.constraint(equalToConstant: 72),
                
                takePicture.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
                takePicture.widthAnchor.constraint(equalToConstant: 206),
                takePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                takePicture.heightAnchor.constraint(equalToConstant: 48),
     ])
    }
  }

    
    

    

