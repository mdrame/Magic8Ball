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
    
    // MARK: -> Global Varibale
    
    let pageImagesArray = ["one", "two", "three"]
    
    /// Property Observer that changes both nunber of page and currentpage, reason for that is to make sure that our pageImagesArray arent been temper with.
    var scrollViewCurrentPage: Int = 0 {
        didSet {
            print("Old Value: \(oldValue)")
        }
        willSet {
            mainPageView.numberOfPages = pageImagesArray.count
            mainPageView.currentPage = newValue
            
            print("Current Page: \(newValue)")
        }
    }
    
    
    
    // MARK: -> Outlets
    @IBOutlet weak var mainPageView: UIPageControl!
    
    
    // MARK: -> Global Function
    
    
    /// ScrollViewCalls
    func scrollViewCalls() {
        
        /// adding scroll view on self.UIView
        view.addSubview(scrollViewContiner)
        /// adding imageView in ScrollView
        scrollViewContiner.addSubview(imageToBeScrolledNumOne)
        scrollViewContiner.addSubview(imageToBeScrolledNumTwo)
        scrollViewContiner.addSubview(imageToBeScrolledNumThree)
        
        /// Main scrollView constraints added on viewDid load
        mainScrollViewConstraints()
        
                scrollViewContiner.delegate = self
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding and Calling Programmatic Views and Constraints
        
        
        /// adding pageControl to view. Over the scrollveiw in view herachey
        //        view.addSubview(pageControl)
        //        constraintsForPageControl()
        
        /// This function mostly but not limited to adding subview to scrollview
        scrollViewCalls()
        
        
        /// adding lable to the first image in the scroll view
        imageToBeScrolledNumOne.addSubview(companyNameLabelConatiner)
        imageToBeScrolledNumOne.addSubview(aboutCompany)
        //        imageToBeScrolledNumOne.addSubview(pageControl)
        
        
       
        
        
        
    }
    
    
    //// MARK: -> PageController SetUP
    //  /// Setting MainPageControl  View
    lazy var pageControl: UIPageControl = {
        
        let pageController = UIPageControl(frame: .zero)
        pageController.backgroundColor = .black
        pageController.tintColor = .systemBlue
        pageController.currentPageIndicatorTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        pageController.pageIndicatorTintColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        pageController.currentPage = 2
        pageController.translatesAutoresizingMaskIntoConstraints = false
        /// Main pageControl constraints added on viewDid load
        constraintsForPageControl()
        return pageController
        
    }()
    
    
    // MARK: -> PageControl Constraints
    /// Setting UIPageControl  constraints
    func constraintsForPageControl() {
        
        
        
        // Weight and Height Constraints
        pageControl.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: 0).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: self.view.frame.size.height / 5).isActive =  true
        
        
        pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        // Left and Right Constraints
        pageControl.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        pageControl.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
        
    }
    
    
    
    // MARK: -> ScrollView SetUp
    /// This closure is creating a scroll view
    lazy var scrollViewContiner: UIScrollView = {
        
        let mainScrollView = UIScrollView(frame: .zero)
        //        mainScrollView.setContentOffset(CGPoint(x: 300, y:0), animated: true)
        mainScrollView.translatesAutoresizingMaskIntoConstraints = false
        mainScrollView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) /// Test ScrollView Presents
        mainScrollView.showsHorizontalScrollIndicator = false
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
        //        scrollViewContiner.topAnchor.constraint(equalTo: self.view.topAnchor).isActive =  true
        //        scrollViewContiner.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        // Left and Right Constraints
        //        scrollViewContiner.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        //        scrollViewContiner.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
        // center into view controller
        scrollViewContiner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        /// Setting scrollview height - 90 inorder to see the pageControl
        // Todo add the page view as a super view on this scrollview
        scrollViewContiner.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -60).isActive = true
        // Wdith and height
        scrollViewContiner.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: 0).isActive = true
        scrollViewContiner.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: 20).isActive = true
        
        
        
    }
    
    
    
    
    
    
    // MARK: -> ImageView SetUp
    
    
    /// This closure is creating a scroll view
    lazy var imageToBeScrolledNumOne: UIImageView = {
        
        let mainImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        mainImageView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) /// Chnage background image to test image avalebility.
        mainImageView.image = UIImage(named: "\(pageImagesArray[0])")
        mainImageView.contentMode = .scaleAspectFit
        return mainImageView
    }()
    
    
    /// This closure is creating a scroll view
    lazy var imageToBeScrolledNumTwo: UIImageView = {
        
        let mainImageView = UIImageView(frame: CGRect(x: self.view.frame.size.width , y: 0, width: self.view.frame.size.width , height: self.view.frame.size.height))
        
        mainImageView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) /// Chnage background image to test image avalebility.
        mainImageView.image = UIImage(named: "\(pageImagesArray[1])")
        mainImageView.contentMode = .scaleAspectFit
        return mainImageView
    }()
    
    
    /// This closure is creating a scroll view
    lazy var imageToBeScrolledNumThree: UIImageView = {
        
        let mainImageView = UIImageView(frame: CGRect(x: self.view.frame.size.width * 2, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        mainImageView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) /// Chnage background image to test image avalebility.
        mainImageView.image = UIImage(named: "\(pageImagesArray[2])")
        mainImageView.contentMode = .scaleAspectFit
        return mainImageView
    }()
    
    
    
    
    
    // MARK: -> Labels SetUp
    /// Setting up company lable using a closure
    lazy var companyNameLabelConatiner: UILabel = {
        
        let companyLable = UILabel(frame: CGRect(x: 0, y: 190, width: self.view.frame.size.width, height: 100))
        companyLable.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        companyLable.text = "W I X E R"
        companyLable.font = companyLable.font.withSize(30.0)
        companyLable.textAlignment =  .center
        
        return companyLable
        
    }()
    
    
    lazy var aboutCompany: UILabel = {
        
        let aboutCompanyLable = UILabel(frame: CGRect(x: 0, y: self.view.frame.size.height / 2 + 200, width: self.view.frame.size.width, height: 100))
        aboutCompanyLable.textColor = .systemPink
        aboutCompanyLable.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        aboutCompanyLable.text = "Online Computer Science Degree"
        aboutCompanyLable.font = aboutCompanyLable.font.withSize(12.0)
        aboutCompanyLable.textAlignment =  .center
        return aboutCompanyLable
        
    }()
    
    
    
    
    
}




extension HomeViewController: UIScrollViewDelegate {
    
    
    // For determining the current pageConroller, I will be compring scroll view width to get current page by using contentoffset which is scrollable.
    /// This function divides the scroll view width and compare it with  a view width to determine which page number we are on
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if scrollView.contentOffset == CGPoint(x: 0, y: 0) {
             /// Returns the current page number to scrollViewCurrentPage property observer
            scrollViewCurrentPage = 0
        } else if scrollView.contentOffset == CGPoint(x: self.view.frame.size.width, y: 0) {
            scrollViewCurrentPage = 1
        } else if scrollView.contentOffset == CGPoint(x: self.view.frame.size.width * 2, y: 0) {
            scrollViewCurrentPage = 2
        }
        
    }
    
    
    
    
    
    
    
}













//
//

