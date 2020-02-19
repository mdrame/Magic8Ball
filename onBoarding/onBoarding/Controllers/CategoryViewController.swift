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
        
        // topViewContainerCalls
        topViewCalls()
        
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
         
        let topView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width , height: 200)) // Temporary
          topView.backgroundColor = #colorLiteral(red: 0.9999071956, green: 1, blue: 0.999881804, alpha: 1)
//          topView.translatesAutoresizingMaskIntoConstraints = false
          return topView
              
      }()
    
        // MARK: -> TopView Calls
    /// this functio addes the label to the top UIView container on the super view
    func topViewCalls() {
        topViewcontainer.addSubview(topViewLabel)
        topViewLabelConstraints()
    }
    
    
    // MARK: -> TopView Label
    
    /// label in topViewContainer
    lazy var topViewLabel: UILabel = {
        
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "HOME"
        label.font = UIFont(name: "Arial", size: 40)
        label.textAlignment = .left
        label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return label
        
    }()
    
    // label constraints
    func topViewLabelConstraints() {

           NSLayoutConstraint.activate([
               // center in bodyviwe container
            topViewLabel.trailingAnchor.constraint(equalTo: topViewcontainer.trailingAnchor, constant: 15),
               // top ancher
            topViewLabel.topAnchor.constraint(equalTo: topViewcontainer.topAnchor, constant: 110),
               // height and width
               topViewLabel.heightAnchor.constraint(equalToConstant: self.topViewcontainer.frame.size.height / 3),
               topViewLabel.widthAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.width),
               
           ])


       }
    
    
    
    
    // MARK: -> BodyView Container
        
        lazy var bodyViewcontainer : UIView = {
             
            let bodyView = UIView(frame: CGRect(x: 0, y: 200, width: self.view.frame.size.width , height: self.view.frame.size.height - self.topViewcontainer.frame.size.height)) // Temporary
              bodyView.backgroundColor = #colorLiteral(red: 0.9489468932, green: 0.9490606189, blue: 0.9489082694, alpha: 1)
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
    
    /// This function set's styling of all buttons
    func buttonsStyling(view: UIButton) {
        view.layer.cornerRadius = 10
        
    }
    
    /// Button one of three in bodyViewContainer
    lazy var buttonOneContainer : UIButton = {
       
        let boxButton = UIButton(frame: .zero)
        boxButton.backgroundColor = #colorLiteral(red: 0.4520890117, green: 0.4215881824, blue: 1, alpha: 1)
        boxButton.setTitle("New Box", for: .normal)
        boxButton.titleLabel?.font = UIFont(name: "Arial", size: 30)
        boxButton.translatesAutoresizingMaskIntoConstraints = false
        
        // style
        buttonsStyling(view: boxButton)
        return boxButton
            
    }()
    
    func buttonOneConstraints() {

        NSLayoutConstraint.activate([
            // center in bodyviwe container
            buttonOneContainer.centerXAnchor.constraint(equalTo: bodyViewcontainer.centerXAnchor),
            // top ancher
            buttonOneContainer.topAnchor.constraint(equalTo: bodyViewcontainer.topAnchor, constant: 50),
            // height and width
            buttonOneContainer.heightAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.height / 4),
            buttonOneContainer.widthAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.width / 2),
            
        ])


    }

    
    /// Button two of three in bodyViewContainer
       lazy var buttonTwoContainer : UIButton = {
          
           let boxButton = UIButton(frame: .zero)
           boxButton.backgroundColor = #colorLiteral(red: 0.4520890117, green: 0.4215881824, blue: 1, alpha: 1)
         boxButton.setTitle("Past Box", for: .normal)
        boxButton.titleLabel?.font = UIFont(name: "Arial", size: 30)
           boxButton.translatesAutoresizingMaskIntoConstraints = false
        
        // style
        buttonsStyling(view: boxButton)
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
           boxButton.backgroundColor = #colorLiteral(red: 0.4520890117, green: 0.4215881824, blue: 1, alpha: 1)
         boxButton.setTitle("Profile", for: .normal)
        boxButton.titleLabel?.font = UIFont(name: "Arial", size: 30)
           boxButton.translatesAutoresizingMaskIntoConstraints = false
        
        // style
        buttonsStyling(view: boxButton)
           return boxButton
               
       }()
       
       func buttonThreeConstraints() {

           NSLayoutConstraint.activate([
               // center in bodyviwe container
               buttonThreeContainer.centerXAnchor.constraint(equalTo: bodyViewcontainer.centerXAnchor),
               // top ancher
               buttonThreeContainer.bottomAnchor.constraint(equalTo: buttonTwoContainer.bottomAnchor, constant: 200),
               // height and width
               buttonThreeContainer.heightAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.height / 4),
               buttonThreeContainer.widthAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.width / 2),
               
           ])


       }
    
    
    
    
    
    

   

}
