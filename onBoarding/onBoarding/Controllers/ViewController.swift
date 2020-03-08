//
//  ViewController.swift
//  PastBox
//
//  Created by Mohammed Drame on 2/23/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    // Global Var
    var dataBase = PastBoxModel.pastBoxData()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // call tableView
        tableViewDelegateAndCalls()
       selfCalls()
       
    }
    ///Initiate VC as a NavigationController
    func selfCalls() {
       self.title = "Test"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    

    // Create Table View
    lazy var tableView: UITableView = {
       let tableView = UITableView(frame: .zero)
//        tableView.backgroundColor = .systemYellow
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.cellIdentifier)
        tableView.translatesAutoresizingMaskIntoConstraints =  false // SMH 😩
        tableView.rowHeight = 140
        return tableView
    }()
    
    // Set Delegat and protocol
    func tableViewDelegateAndCalls() {
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableViewConstraints()
        
    }
 
    
    // Add constraint
    func tableViewConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            // Height and width try
//            tableView.heightAnchor.constraint(equalTo: view.heightAnchor),
//            tableView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return dataBase.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellIdentifier, for: indexPath) as! CustomTableViewCell
        cell.setUpView(object: dataBase[indexPath.row])
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        return cell
       }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        // Deselect when cell is taped
        cell?.selectionStyle = .none
        // present new starViewController
        let starViewController = StarTableViewController()
                present(starViewController, animated: true, completion: nil)
                  print("Cell Tap")
        
        
    }
    


}

