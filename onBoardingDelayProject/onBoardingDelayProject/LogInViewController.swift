//
//  LogInViewController.swift
//  onBoardingDelayProject
//
//  Created by Mohammed Drame on 3/12/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    // 1. Create UIlabel for app name ✅
    lazy var appNameLabel: UILabel = {
        let appNameLabel = UILabel(frame: .zero)
        appNameLabel.text = "PetBox"
        appNameLabel.textAlignment = .center
        appNameLabel.font = UIFont(name: "Marker Felt", size: 70)
        //        appNameLabel.backgroundColor = .systemPink
        appNameLabel.textColor = .white
        NSLayoutConstraint.activate([
            appNameLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
        return appNameLabel
    }()
    
    func appNameLabelConstraint() {
        
    }
    
    // 2. Create UIImage for app logo ✅
    lazy var appLogoImage: UIImageView = {
        let appLogoImage = UIImageView()
        appLogoImage.image = #imageLiteral(resourceName: "package")
        //        appLogoImage.backgroundColor = .orange
        appLogoImage.contentMode = .scaleToFill
        NSLayoutConstraint.activate([
            appLogoImage.heightAnchor.constraint(equalToConstant: 60),
            appLogoImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        return appLogoImage
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 2
        stackView.backgroundColor = .blue
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    func stackViewConstrain() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -370)
        ])
    }
    
    
    // 3. Create two textfield ✅
    lazy var firstTextField : UITextField = {
        let firstTextField = UITextField(frame: .zero)
        firstTextField.translatesAutoresizingMaskIntoConstraints = false
        //        firstTextField.placeholder = "UserName"
        firstTextField.attributedPlaceholder = NSAttributedString(string:"UserName", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white ])
        firstTextField.backgroundColor = #colorLiteral(red: 0.9107895494, green: 0.9195410609, blue: 0.2326964736, alpha: 0)
        firstTextField.textColor = .white
        
        firstTextField.layer.borderWidth = 2
        firstTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //        firstTextField.addPadding()
        firstTextField.layer.sublayerTransform = CATransform3DMakeTranslation(10.0, 0.0, 0.0)
        return firstTextField
    }()
    
    func firstTextFieldConstrain() {
        NSLayoutConstraint.activate([
            firstTextField.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30),
            firstTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            firstTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -330),
            firstTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
        ])
    }
    
    lazy var textFieldTwo: UITextField = {
        let firstTextField = UITextField(frame: .zero)
        firstTextField.translatesAutoresizingMaskIntoConstraints = false
        //        firstTextField.placeholder = "UserName"
        firstTextField.attributedPlaceholder = NSAttributedString(string:"PassWord", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white ])
        firstTextField.backgroundColor = #colorLiteral(red: 0.9107895494, green: 0.9195410609, blue: 0.2326964736, alpha: 0)
        firstTextField.textColor = .white
        
        firstTextField.layer.borderWidth = 2
        firstTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //        firstTextField.addPadding()
        firstTextField.layer.sublayerTransform = CATransform3DMakeTranslation(10.0, 0.0, 0.0)
        return firstTextField
    }()
    
    func textFieldTwoConstrain() {
        NSLayoutConstraint.activate([
            textFieldTwo.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 10),
            textFieldTwo.leadingAnchor.constraint(equalTo: firstTextField.leadingAnchor, constant: 0),
            textFieldTwo.bottomAnchor.constraint(equalTo:  view.bottomAnchor, constant: -280 ),
            textFieldTwo.trailingAnchor.constraint(equalTo:  firstTextField.trailingAnchor, constant: 0)
        ])
    }
    
    // 4. create login button for app
    lazy var logInButton: UIButton = {
        let logInButton = UIButton(frame: .zero)
        logInButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        logInButton.setTitle("LogIn", for: .normal)
        logInButton.setTitleColor(.black, for: .normal)
        logInButton.addTarget(self, action: #selector(logInPressed), for: .touchUpInside)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.layer.cornerRadius = 15
        return logInButton
    }()
    
    @objc func logInPressed() {
        print("User loged in")
    }
    
    func logInButtonConstrain() {
        NSLayoutConstraint.activate([
            logInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 260),
            logInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            logInButton.widthAnchor.constraint(equalToConstant: 300),
            logInButton.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        view.addSubview(stackView)
        stackView.addArrangedSubview(appNameLabel)
        stackView.addArrangedSubview(appLogoImage)
        stackViewConstrain()
        view.addSubview(firstTextField)
        firstTextFieldConstrain()
        view.addSubview(textFieldTwo)
        textFieldTwoConstrain()
        view.addSubview(logInButton)
        logInButtonConstrain()
    }
    
    
}

