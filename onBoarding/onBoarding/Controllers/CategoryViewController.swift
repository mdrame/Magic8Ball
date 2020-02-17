//
//  CategoryViewController.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/14/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    
    // MARK: -> ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
        
    
        // Views
        bodyViewsCall()
        
        // bodyviewButtonsCalls
        buttonsCall()
        
    }
    
    
    
    // Temporary ViewController
   
    
    
    // MARK: -> TopView Calls
    /// This function add TopUIView to view and assing constraints
    func bodyViewsCall() {
        // topview
        view.addSubview(topViewcontainer)
        // constraints here
        
        // bodyView
        view.addSubview(bodyViewcontainer)
    }
    
    
    // MARK: -> TopView Container
    
    lazy var topViewcontainer : UIView = {
         
        let topView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width , height: 300)) // Temporary
          topView.backgroundColor = .systemPink
//          topView.translatesAutoresizingMaskIntoConstraints = false
          return topView
              
      }()
    
    
    // MARK: -> BodyView Container
        
        lazy var bodyViewcontainer : UIView = {
             
            let bodyView = UIView(frame: CGRect(x: 0, y: 300, width: self.view.frame.size.width , height: self.view.frame.size.height - self.topViewcontainer.frame.size.height)) // Temporary
              bodyView.backgroundColor = .systemBlue
    //          topView.translatesAutoresizingMaskIntoConstraints = false
              return bodyView
                  
          }()
    
    

    // MARK: -> Box Buttons Calls
    
    func buttonsCall() {
        // First Button and constraint in continer
        bodyViewcontainer.addSubview(buttonOneContainer)
        buttonOneConstraints()
        
        // First Button and constraint in continer
        bodyViewcontainer.addSubview(buttonTwoContainer)
               buttonTwoConstraints()
        
        // First Button and constraint in continer
        bodyViewcontainer.addSubview(buttonThreeContainer)
               buttonThreeConstraints()
    }
    
    
    // MARK: -> Category Boxes
    
    /// Button one of three in bodyViewContainer
    lazy var buttonOneContainer : UIButton = {
       
        let boxButton = UIButton(frame: .zero)
        boxButton.backgroundColor = .green
        boxButton.translatesAutoresizingMaskIntoConstraints = false
        return boxButton
            
    }()
    
    func buttonOneConstraints() {

        NSLayoutConstraint.activate([
            // center in bodyviwe container
            buttonOneContainer.centerXAnchor.constraint(equalTo: bodyViewcontainer.centerXAnchor),
            // top ancher
            buttonOneContainer.topAnchor.constraint(equalTo: bodyViewcontainer.topAnchor, constant: 20),
            // height and width
            buttonOneContainer.heightAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.height / 4),
            buttonOneContainer.widthAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.width / 2),
            
        ])


    }

    
    /// Button two of three in bodyViewContainer
       lazy var buttonTwoContainer : UIButton = {
          
           let boxButton = UIButton(frame: .zero)
           boxButton.backgroundColor = .blue
           boxButton.translatesAutoresizingMaskIntoConstraints = false
           return boxButton
               
       }()
       
       func buttonTwoConstraints() {

           NSLayoutConstraint.activate([
               // center in bodyviwe container
               buttonTwoContainer.centerXAnchor.constraint(equalTo: bodyViewcontainer.centerXAnchor),
               buttonTwoContainer.centerYAnchor.constraint(equalTo: bodyViewcontainer.centerYAnchor),
               // top ancher
            
//               buttonTwoContainer.topAnchor.constraint(equalTo: bodyViewcontainer.topAnchor, constant: 10),
               // height and width
               buttonTwoContainer.heightAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.height / 4),
               buttonTwoContainer.widthAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.width / 2),
               
           ])


       }
    
    
    /// Button three of three in bodyViewContainer
       lazy var buttonThreeContainer : UIButton = {
          
           let boxButton = UIButton(frame: .zero)
           boxButton.backgroundColor = .black
           boxButton.translatesAutoresizingMaskIntoConstraints = false
           return boxButton
               
       }()
       
       func buttonThreeConstraints() {

           NSLayoutConstraint.activate([
               // center in bodyviwe container
               buttonThreeContainer.centerXAnchor.constraint(equalTo: bodyViewcontainer.centerXAnchor),
               // top ancher
               buttonThreeContainer.bottomAnchor.constraint(equalTo: buttonTwoContainer.bottomAnchor, constant: 180),
               // height and width
               buttonThreeContainer.heightAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.height / 4),
               buttonThreeContainer.widthAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.width / 2),
               
           ])


       }
    
    
    
    
    
    

   

}
