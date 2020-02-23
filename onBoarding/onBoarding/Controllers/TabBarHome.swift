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
        
        let vc = CollectionHomeVC()
//        vc.imageName = "northAmerica"
        vc.title = "Home"
        vc.view.backgroundColor = .systemPink
//        let navController = UINavigationController(rootViewController:vc)
        vc.tabBarItem = UITabBarItem(title: vc.title, image: #imageLiteral(resourceName: "icons8-home-24"), selectedImage: #imageLiteral(resourceName: "icons8-home-24"))
//        vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
        self.tabBar.barTintColor = UIColor.white
        self.tabBar.tintColor = UIColor.red
        
<<<<<<< HEAD
        
        let vc2 = UIViewController()
        //        vc.imageName = "northAmerica"
                vc2.title = "Empty VC"
                vc2.view.backgroundColor = .systemPink
        //        let navController = UINavigationController(rootViewController:vc)
                vc2.tabBarItem = UITabBarItem(title: vc2.title, image: #imageLiteral(resourceName: "icons8-box-64"), selectedImage: #imageLiteral(resourceName: "icons8-box-64"))
        //        vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -3, right: 0)
                self.tabBar.barTintColor = UIColor.white
                self.tabBar.tintColor = UIColor.red
        
=======
        let vc2 = UIViewController()
        vc2.view.backgroundColor = .green
        vc2.title = "New"
        let navigationController2 = UINavigationController(rootViewController: vc2)
        vc2.tabBarItem = UITabBarItem(title: vc2.title!, image: #imageLiteral(resourceName: "icons8-box-64"), selectedImage: #imageLiteral(resourceName: "icons8-box-64"))
        
        let vc3 = UIViewController()
        vc3.view.backgroundColor = .blue
        vc3.title = "History"
        let navigationController3 = UINavigationController(rootViewController: vc3)
        vc3.tabBarItem = UITabBarItem(title: vc3.title!, image: #imageLiteral(resourceName: "icons8-time-machine-50"), selectedImage: #imageLiteral(resourceName: "icons8-time-machine-50"))
        
        let vc4 = UIViewController()
        vc4.view.backgroundColor = .purple
        vc4.title = "Profile"
        let navigationController4 = UINavigationController(rootViewController: vc4)
        vc4.tabBarItem = UITabBarItem(title: vc4.title!, image: #imageLiteral(resourceName: "icons8-female-profile-50"), selectedImage: #imageLiteral(resourceName: "icons8-female-profile-50"))
>>>>>>> e84c6dc7c6d3a92570899052ef7fc7809901a96b
        
   
        viewControllers = [vc,vc2  ]
    }
    
    
    
    
    
}
