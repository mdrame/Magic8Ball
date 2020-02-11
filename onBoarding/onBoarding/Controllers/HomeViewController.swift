//
//  HomeViewController.swift
//  onBoarding
//
//  Created by Mohammed Drame on 1/31/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit





class HomeViewController: UIViewController {
    
    // MARK: -> Global Varibale
    
    
    // I'm counting the photo instead of a imageview array because then i'm certain that I'got pacture in all my imageView
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
    
    
    //        func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
    //            let x = targetContentOffset.pointee.x
    //            mainPageView.currentPage = Int(x / view.frame.width)
    //            if mainPageView.currentPage == 2 {
    //                nextToLogInButton.isHidden = false
    ////                nextToLogInButton.isUserInteractionEnabled = true
    //            } else {
    //                nextToLogInButton.isHidden = true
    ////                nextToLogInButton.isUserInteractionEnabled = false
    //            }
    //        }
    
    
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
        
        //        self.view.addSubview(nextToLogInButton)
        
        
        
        /// Main scrollView constraints added on viewDid load
        mainScrollViewConstraints()
        
        scrollViewContiner.delegate = self
        
    }
    
    
    
    
    
    
    
    
    /// change navigation code
    func navigationCalls() {
        /// This function attempts to remote the navigtion bar on the onBoarding screens.
        self.navigationController?.isNavigationBarHidden = true
        
        
    }
    
    
    func buttonCalls() {
        
        self.imageToBeScrolledNumThree.addSubview(self.nextToLogInButton)
        //
        //              NSLayoutConstraint.activate([
        //                  self.nextToLogInButton.centerXAnchor.constraint(equalTo: self.mainPageView.centerXAnchor),
        //                  self.nextToLogInButton.centerYAnchor.constraint(equalTo: self.mainPageView.centerYAnchor),
        //
        //                  self.nextToLogInButton.widthAnchor.constraint(equalTo: self.mainPageView.widthAnchor),
        //                  self.nextToLogInButton.heightAnchor.constraint(equalTo: self.mainPageView.heightAnchor)
        //              ])
        //
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        // Adding and Calling Programmatic Views and Constraints
        
        
        /// adding pageControl to view. Over the scrollveiw in view herachey
        //        view.addSubview(pageControl)
        //        constraintsForPageControl()
        
        /// This function mostly but not limited to adding subview to scrollview
        scrollViewCalls()
        /// handles all the uinavgation calls
        navigationCalls()
        
        buttonCalls()
        
        /// adding lable to the first image in the scroll view
        //        imageToBeScrolledNumOne.addSubview(companyNameLabelConatiner)
        //        imageToBeScrolledNumOne.addSubview(aboutCompany)
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
        /// the width of the scrollview is equal to three view, which are the same size as our uiimageview
        mainScrollView.contentSize.width = self.view.frame.size.width * 3
        mainScrollView.isPagingEnabled =  true
        
        mainScrollView.isScrollEnabled =  true
        
        
        
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
        scrollViewContiner.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: 0.0).isActive = true
        scrollViewContiner.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: 0.0).isActive = true
        
        
        
    }
    
    
    
    
    
    
    // MARK: -> ImageView SetUp
    
    
    /// This closure is creating a imageview, constraints are set to view height and widh.
    lazy var imageToBeScrolledNumOne: UIImageView = {
        
        let mainImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        mainImageView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) /// Chnage background image to test image avalebility.
        mainImageView.image = UIImage(named: "\(pageImagesArray[0])")
        mainImageView.contentMode = .scaleToFill
        
        
        
        
        //        NSLayoutConstraint.activate([
        //            // width, heiht constraints
        //            self.nextToLogInButton.widthAnchor.constraint(equalToConstant: 200),
        //            self.nextToLogInButton.heightAnchor.constraint(equalToConstant: 150),
        //
        //            // Bottom, Leading, Trailing constraints
        //            self.nextToLogInButton.topAnchor.constraint(equalTo: self.imageToBeScrolledNumOne.topAnchor, constant: self.imageToBeScrolledNumOne.frame.size.height / 2 + 20),
        //
        //        ])
        return mainImageView
    }()
    
    
    /// This closure is creating a scroll view
    lazy var imageToBeScrolledNumTwo: UIImageView = {
        
        let mainImageView = UIImageView(frame: CGRect(x: self.view.frame.size.width , y: 0, width: self.view.frame.size.width , height: self.view.frame.size.height))
        
        mainImageView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) /// Chnage background image to test image avalebility.
        mainImageView.image = UIImage(named: "\(pageImagesArray[1])")
        mainImageView.contentMode = .scaleToFill
        
        
        
        
        return mainImageView
    }()
    
    
    /// This closure is creating a scroll view
    lazy var imageToBeScrolledNumThree: UIImageView = {
        
        let mainImageView = UIImageView(frame: CGRect(x: self.view.frame.size.width * 2, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        mainImageView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) /// Chnage background image to test image avalebility.
        mainImageView.image = UIImage(named: "\(pageImagesArray[2])")
        mainImageView.contentMode = .scaleToFill
        
        mainImageView.isUserInteractionEnabled = true
        
        
        
        return mainImageView
    }()
    
    
    
    
    
    // MARK: -> Labels SetUp
    /// Setting up company lable using a closure
    lazy var companyNameLabelConatiner: UILabel = {
        
        let companyLable = UILabel(frame: CGRect(x: 0, y: self.view.frame.size.width / 2, width: self.view.frame.size.width, height: self.aboutCompany.frame.size.height))
        companyLable.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        companyLable.text = "W I X E R"
        companyLable.font = companyLable.font.withSize(30.0)
        companyLable.textAlignment =  .center
        
        // styling
        companyLable.layer.shadowColor = #colorLiteral(red: 0.1512203515, green: 0.1612353325, blue: 0.1522695124, alpha: 1)
        companyLable.layer.shadowOffset = CGSize(width: 0, height: 0)
        companyLable.layer.shadowOpacity = 2;
        companyLable.layer.shadowRadius = 10;
        
        return companyLable
        //
    }()
    
    func nameConstraint() {
        
        companyNameLabelConatiner.translatesAutoresizingMaskIntoConstraints =  false
        // top constraints
        //        companyNameLabelConatiner.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60).isActive = true
        companyNameLabelConatiner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        companyNameLabelConatiner.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: self.imageToBeScrolledNumOne.frame.size.height).isActive = true
        
        
        //         leading and trailling
        companyNameLabelConatiner.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        companyNameLabelConatiner.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        // width and hegiht
        companyNameLabelConatiner.widthAnchor.constraint(equalToConstant: self.view.frame.size.width).isActive = true
        companyNameLabelConatiner.heightAnchor.constraint(equalToConstant: self.view.frame.size.height / 5).isActive = true
        
        
    }
    
    
    lazy var aboutCompany: UILabel = {
        
        let aboutCompanyLable = UILabel(frame: CGRect(x: 0, y: self.view.frame.size.height / 2 + 200, width: self.view.frame.size.width, height: 100))
        aboutCompanyLable.textColor = .black
        aboutCompanyLable.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        aboutCompanyLable.text = "Online Computer Science Degree"
        aboutCompanyLable.font = aboutCompanyLable.font.withSize(12.0)
        aboutCompanyLable.textAlignment =  .center
        return aboutCompanyLable
        
    }()
    
    
    
    lazy var nextToLogInButton: UIButton = {
        // constraints to be added later!!!
        let logInButton = UIButton(frame: CGRect(x: 80, y: 670, width: 250, height: 50))
        
        logInButton.backgroundColor = .systemBlue
        logInButton.setTitle("CONTINUE", for: .normal)
        // target
        logInButton.addTarget(self, action: #selector(logInButtonPressed), for: .touchUpInside)
        //        logInButton.isUserInteractionEnabled = true
        //        logInButton.translatesAutoresizingMaskIntoConstraints = false
        
        // styling
        logInButton.layer.cornerRadius =  10
        //        logInButton.isHidden = true
        
        return logInButton
        
    }()
    
    
    
    
    
    /// This functions run when user press the login button on the last scrollview window, This function segue to the login viewcontroller, and also reset the navigation stack, by remove the onboarding vc from the navigation stack.
    @objc func logInButtonPressed() {
        
        print("Seguing .... ")
        
        self.navigationController?.initRootViewController(vc: LoginViewController())
        
        
        
        
        
    }
    
    
    
    
 
    
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

