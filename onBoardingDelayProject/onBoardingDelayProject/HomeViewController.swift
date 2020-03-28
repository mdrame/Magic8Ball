//
//  HomeViewController.swift
//  onBoardingDelayProject
//
//  Created by Mohammed Drame on 3/26/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    let buttonTittlesList = ["New box", "Past boxes", "Profile"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        navigationControllerSetUp()
        view.addSubview(mainStackView)
        mainStackViewConstrain()
        buttons()
    }
    
    func navigationControllerSetUp() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Home"
    }
    
    
    // 1. Make HomeViewController a UINavigation Controller ✅
    // 2. Add large tittle ✅
    // 3. Create StackView ✅
    // 4. Create StackViewContraints ✅
    // 5. Add stackview to view ✅
    // 6. Create threee buttons using a for loop ✅
    // 7. Add buttons to stackview ✅
    // 8. Call button function in viewDid load ✅
    
    lazy var mainStackView: UIStackView = {
        let mainStackView = UIStackView(frame: .zero)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.axis = .vertical
        mainStackView.distribution = .fillEqually
        mainStackView.spacing = 25
        return mainStackView
    }()
    
    func mainStackViewConstrain() {
        NSLayoutConstraint.activate([
            mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainStackView.widthAnchor.constraint(equalToConstant: self.view.frame.size.width - 150),
            mainStackView.heightAnchor.constraint(equalToConstant: 500)
        ])
    }
    
    
    func buttons() {
        for i in 0...2 {
            let buttons = UIButton()
            buttons.translatesAutoresizingMaskIntoConstraints = false
            buttons.backgroundColor = #colorLiteral(red: 0.4413420558, green: 0.4277904928, blue: 0.9862704873, alpha: 1)
            buttons.setTitle("\(buttonTittlesList[i])", for: .normal)
            buttons.layer.cornerRadius = 10
            buttons.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 25)
            buttons.tag = i
            buttons.addTarget(self, action: #selector(buttonPress(_:)), for: .touchUpInside)
            mainStackView.addArrangedSubview(buttons)
        }
    }
    
    @objc func buttonPress(_ sender: UIButton){
        switch sender.tag {
        case 0:
            print("Button One")
        case 1:
            print("Button Two")
        case 2:
            print("Button Three")
        default:
            print("No button press")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
