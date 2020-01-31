//
//  HomeViewController.swift
//  onBoarding
//
//  Created by Mohammed Drame on 1/31/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit
@IBDesignable
class HomeViewController: UIViewController {
    
    
    let pageImagesArray:[UIImage] = [#imageLiteral(resourceName: "one"), #imageLiteral(resourceName: "two"), #imageLiteral(resourceName: "three")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding and Calling Programmatic Views and Constraints
        
        /// adding scroll view on self.UIView
        view.addSubview(scrollViewContiner)
        /// adding imageView in ScrollView
        scrollViewContiner.addSubview(imageToBeScrolledNumOne)
        scrollViewContiner.addSubview(imageToBeScrolledNumTwo)
        scrollViewContiner.addSubview(imageToBeScrolledNumThree)
        /// Main scrollView constraints added on viewDid load
        mainScrollViewConstraints()
        
    }
    
    // MARK: -> ScrollView SetUp
    /// This closure is creating a scroll view
    lazy var scrollViewContiner: UIScrollView = {
        
        let mainScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 420, height: 900))
//        mainScrollView.setContentOffset(CGPoint(x: 300, y:0), animated: true)
         mainScrollView.translatesAutoresizingMaskIntoConstraints = false
        mainScrollView.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        mainScrollView.showsHorizontalScrollIndicator = true
        mainScrollView.contentSize.height =  self.view.frame.size.height
        mainScrollView.contentSize.width = self.view.frame.size.width * 3
        mainScrollView.isPagingEnabled =  true
        
        mainScrollView.isScrollEnabled =  true
//        mainScrollView.isPagingEnabled = true
        
        
        return mainScrollView
        
        
    }()
    
    // MARK: -> ScrollView Constraints
    /// Setting mainScroll view constraints
   private func mainScrollViewConstraints () {
    
   
        // Top and Bottom Constraints
    scrollViewContiner.topAnchor.constraint(equalTo: self.view.topAnchor).isActive =  true
    scrollViewContiner.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    // Left and Right Constraints
    scrollViewContiner.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
    scrollViewContiner.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
    
    
        
    }
    
    
    
    
    
    
    
     // MARK: -> ImageView SetUp
    
    
    /// This closure is creating a scroll view
    lazy var imageToBeScrolledNumOne: UIImageView = {
        
        let mainImageView = UIImageView(frame: CGRect(x: 10, y: 100, width: 310, height: 300))
        
        mainImageView.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1) /// Green as background represent no image on imaegView
        mainImageView.image = UIImage(named: "one")
        mainImageView.contentMode = .scaleToFill
        return mainImageView
    }()
    
    
    /// This closure is creating a scroll view
       lazy var imageToBeScrolledNumTwo: UIImageView = {
           
           let mainImageView = UIImageView(frame: CGRect(x: 250, y: 400, width: 210, height: 100))
           
           mainImageView.backgroundColor = #colorLiteral(red: 0.9914525618, green: 1, blue: 0.02149297677, alpha: 1) /// Green as background represent no image on imaegView
           mainImageView.image = UIImage(named: "two")
           return mainImageView
       }()
    
    
    /// This closure is creating a scroll view
       lazy var imageToBeScrolledNumThree: UIImageView = {
           
           let mainImageView = UIImageView(frame: CGRect(x: 1000, y: 600, width: 210, height: 100))
           
           mainImageView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1) /// Green as background represent no image on imaegView
           mainImageView.image = UIImage(named: "three")
           return mainImageView
       }()
    
    
    
    
    
    
    
    
    
    
}
