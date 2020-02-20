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
        vc.view.backgroundColor = .yellow
        let navigationController1 = UINavigationController(rootViewController: vc)
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        let vc2 = BoxDetailViewController()
               vc2.view.backgroundColor = .yellow
               let navigationController2 = UINavigationController(rootViewController: vc2)
               vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        let vc3 = BoxDetailViewController()
               vc3.view.backgroundColor = .yellow
               let navigationController3 = UINavigationController(rootViewController: vc3)
               vc3.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        let vc4 = BoxDetailViewController()
               vc4.view.backgroundColor = .yellow
               let navigationController4 = UINavigationController(rootViewController: vc4)
               vc4.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        
        viewControllers = [vc, vc2, vc3, vc4]
    }
    
    
    


}
