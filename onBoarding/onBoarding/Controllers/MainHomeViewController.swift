//
//  MainHomeViewController.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/5/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit 

class MainHomeViewController: UIViewController {
    
    // MARK: -> Global Variables
    // Database of Image objects
    let db = [Images(imageOne: "box"),Images(imageOne: "box"),Images(imageOne: "box")]
    
    // MARK: -> ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Home"
        
        /// This function creates and add mainTableview to view
        tableViewCalls()
    }
    
    
    // MARK: -> TableView
    
    
    func tableViewCalls() {
        // adding tableView to view
        view.addSubview(tableViewContainer)
//        tableViewConstraints()
        // table view delegate and datasource
        tableViewContainer.delegate = self
        tableViewContainer.dataSource = self
        // tableview Content Height
        tableViewContainer.rowHeight =  150
        /// adding constraints to tableView
        //        tableViewConstraints()
        tableViewContainer.register(CustomeUITableViewCell.self, forCellReuseIdentifier: "cell")
        
        
        
        
    }
    
    // creating tableview
    lazy var tableViewContainer: UITableView = {
        
        let mainTableView = UITableView(frame: CGRect(x: 0, y: 250, width: self.view.frame.size.width, height: self.view.frame.size.height))
                mainTableView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        
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
        return db.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomeUITableViewCell
        cell.setUI(object: db[indexPath.row])
//        cell?.textLabel?.text = "Test"
        return cell
    }
    
    
    
    
    
    
    
    
    
    
}
