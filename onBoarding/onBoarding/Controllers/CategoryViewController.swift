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
        bodyViewcontainer.addSubview(categoryBoxContainer)
        buttonConstraints()
    }
    
    
    // MARK: -> Category Boxes
    
    lazy var categoryBoxContainer : UIButton = {
       
        let boxButton = UIButton(frame: .zero)
        boxButton.backgroundColor = .green
        boxButton.translatesAutoresizingMaskIntoConstraints = false
        return boxButton
            
    }()
    
    func buttonConstraints() {

        NSLayoutConstraint.activate([
            // center in bodyviwe container
            categoryBoxContainer.centerXAnchor.constraint(equalTo: bodyViewcontainer.centerXAnchor),
            // top ancher
            categoryBoxContainer.topAnchor.constraint(equalTo: bodyViewcontainer.topAnchor, constant: 10),
            // height and width
            categoryBoxContainer.heightAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.height / 4),
            categoryBoxContainer.widthAnchor.constraint(equalToConstant: self.bodyViewcontainer.frame.size.width / 2),
            
        ])


    }
//
    
    
    
    
    
    

   

}
