//
//  loginViewController.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/4/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemPink
        
        
        
        // Mark: -> Programmatic view calls
        
        /// logoWord and constraints decelaration
        view.addSubview(logoWordContainer)
        //        logoWordConstraints()
        
        
        /// logoImage and constraints decelaration
        view.addSubview(logoImageViewContainer)
        
        
        /// logInButton and constraints decelaration
        view.addSubview(logInButtonContiner)
        
        
    }
    
    // MARK: -> UILABEL
    
    lazy var logoWordContainer: UILabel = {
        // `CGRect(x: 10, y: 100, width: 200, height: 200)` label test size
        let logoWord = MdCustomLabel(title: "B O X", framee: CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 200), bgcolor: .systemPink, textColorr: .white, alignment: .center, textSize: UIFont(name: "Arial", size: 70)!)
        
        
        return logoWord
        
    }()
    
    func logoImageViewConstraints() {
        
        NSLayoutConstraint.activate([
            // center horozontally in container
            logoWordContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            // top Anchor
            logoWordContainer.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            // width and height
            logoWordContainer.widthAnchor.constraint(equalToConstant: 200),
            logoWordContainer.heightAnchor.constraint(equalToConstant: 150),
            
        ])
        
        
    }
    
    
    // MARK: -> UIImageView
    
    lazy var logoImageViewContainer: UIImageView = {
        // Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon"> www.flaticon.com</a>
        let logoImage = MdCustomImageView(image: #imageLiteral(resourceName: "box"), framee: CGRect(x: 100, y: 250, width: self.view.frame.size.width / 2, height: self.view.frame.size.height / 4), bgcolor: .systemPink, cotentMode: .scaleToFill)
        
        return logoImage
        
    }()
    
    
    
    
    // MARK: -> UIButton
    
    lazy var logInButtonContiner: UIButton = {
        
        let logInButton = MdCustomButton(framee: CGRect(x: 25, y: 700, width: 360, height: 100), bg: .systemYellow, title: "LOGIN", titleColor: .black , titleState: .normal, layer: CGFloat(20) )
        logInButton.isUserInteractionEnabled = true
        logInButton.addTarget(self, action: #selector(logInButtonPress), for: .touchUpInside)
        
        return logInButton
        
    }()
    
    
    @objc func logInButtonPress() {
        // perform Segue to the nextView Controller
        
        print("Seguing .... ")
        let mainHomeViewController = MainHomeViewController()
        navigationController?.pushViewController(mainHomeViewController, animated: true)
        
    }
    
    
    
    
    
    
    
    
}
