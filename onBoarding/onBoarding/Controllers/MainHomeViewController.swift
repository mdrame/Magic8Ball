//
//  MainHomeViewController.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/5/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit 

class MainHomeViewController: UIViewController {
    
    // MARK: -> ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
        /// This function creates and add mainTableview to view
        tableViewCalls()
    }
    
    
    // MARK: -> TableView
    
    
    func tableViewCalls() {
        // adding tableView to view
        view.addSubview(tableViewContainer)
        // table view delegate and datasource
        tableViewContainer.delegate = self
        tableViewContainer.delegate = self
        // tableview Content Height
        tableViewContainer.rowHeight =  100
        /// adding constraints to tableView
//        tableViewConstraints()
        
        
        
    }
    // creating tableview
    lazy var tableViewContainer: UITableView = {
        
        let mainTableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
//        mainTableView.backgroundColor = .orange
     
        
        return mainTableView
        
    }()
    
    // tableview constraints
    func tableViewConstraints() {
        
        NSLayoutConstraint.activate([
            // center of the screen
            tableViewContainer.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            tableViewContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            // width and hegiht
            tableViewContainer.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            tableViewContainer.heightAnchor.constraint(equalTo: self.view.heightAnchor)
        ])
        
        
    }
    
    
    
    
}



extension MainHomeViewController : UITableViewDataSource , UITableViewDelegate {
    
    // MARK: -> Tableview Protocles & Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
    
    
    
    
    
    
    
}
