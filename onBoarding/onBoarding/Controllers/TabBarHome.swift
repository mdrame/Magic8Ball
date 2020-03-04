//
//  TabBarHome.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/20/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class TabBarHome: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapBarSetUp()
    }
    
    
    // refacter tabView
    
    
    
    
    
    
    // creating tapBar
    func tapBarSetUp() {
        
        let vc = BoxDetailViewController()
//        vc.imageName = "northAmerica"
        vc.title = "Home"
        vc.view.backgroundColor = .systemPink
//        let navController = UINavigationController(rootViewController:vc)
        vc.tabBarItem = UITabBarItem(title: vc.title, image: #imageLiteral(resourceName: "icons8-home-24"), selectedImage: #imageLiteral(resourceName: "icons8-home-24"))
//        vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
        self.tabBar.barTintColor = UIColor.white
        self.tabBar.tintColor = UIColor.red
        
        
        let vc2 = UIViewController()
        //        vc.imageName = "northAmerica"
                vc2.title = "Empty VC"
                vc2.view.backgroundColor = .systemPink
        //        let navController = UINavigationController(rootViewController:vc)
                vc2.tabBarItem = UITabBarItem(title: vc2.title, image: #imageLiteral(resourceName: "icons8-box-64"), selectedImage: #imageLiteral(resourceName: "icons8-box-64"))
        //        vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
                self.tabBar.barTintColor = UIColor.white
                self.tabBar.tintColor = UIColor.red
        
        
   
        viewControllers = [vc,vc2  ]
    }
    
    
    
    
    
}
