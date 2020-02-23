//
//  BoxDetailViewController.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/11/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CollectionViewHomeVC: UIViewController {
    
    
    // Database of Image objects
    let db = BoxDataModel.cellData()
    let collectionViewCustomClass = CustomTableViewCellForCollectionView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        collectionViewContiner.delegate = self
        collectionViewContiner.dataSource = self
        //
        //        view.addSubview(collectionViewContiner)
        //        collectionViewConstrain()
        
        // TableView
        
        tableViewContainer.delegate =  self
        tableViewContainer.dataSource =  self
        
        view.addSubview(tableViewContainer)
        tableViewConstraints()
        
        
        
        
    }
    
    lazy var collectionViewContiner: UICollectionView = {
        // layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        // CollectionView
        let mainCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        mainCollectionView.backgroundColor = .white
        mainCollectionView.showsHorizontalScrollIndicator = false
        mainCollectionView.translatesAutoresizingMaskIntoConstraints = false
        mainCollectionView.register( MDCustomCollectionViewCell.self, forCellWithReuseIdentifier: MDCustomCollectionViewCell.cellIdentifier)
        // styling & constraints
        
        
        return mainCollectionView
    }()
    
    
    // MainTableView
    
<<<<<<< HEAD
    lazy var tableViewContainer: UITableView = {
        
        let mainTableView = UITableView(frame: .zero)
        mainTableView.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        mainTableView.register(CustomTableViewCellForRegularTableViewDisplay__.self, forCellReuseIdentifier: CustomTableViewCellForRegularTableViewDisplay__.cell)
        mainTableView.register(CustomTableViewCellForCollectionView.self, forCellReuseIdentifier: CustomTableViewCellForCollectionView.cell)
        //        mainTableView
        //        mainTableView.separatorInset =  UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //        mainTableView.contentSize = CGSize(width: self.view.frame.size.width, height: 100)
        mainTableView.rowHeight = 200
=======
    
    func collectionViewConstrain() {
        
        NSLayoutConstraint.activate([
            collectionViewContiner.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 5),
            collectionViewContiner.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionViewContiner.heightAnchor.constraint(equalToConstant: self.view.frame.size.height / 3),
            collectionViewContiner.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
>>>>>>> e84c6dc7c6d3a92570899052ef7fc7809901a96b
        
        mainTableView.separatorStyle = .singleLine
        
        return mainTableView
        
    }()
    
    // tableview constraints
    func tableViewConstraints() {
        tableViewContainer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableViewContainer.topAnchor.constraint(equalTo: view.topAnchor),
            tableViewContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            //tableViewContainer.heightAnchor.constraint(equalTo: collectionViewContiner.widthAnchor, multiplier: 0.5),
            tableViewContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    
<<<<<<< HEAD
    
    
}



extension BoxDetailViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 200
=======
} // VC Ends here


extension CollectionViewHomeVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
>>>>>>> e84c6dc7c6d3a92570899052ef7fc7809901a96b
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MDCustomCollectionViewCell.cellIdentifier, for: indexPath) as! MDCustomCollectionViewCell
<<<<<<< HEAD
        cell.contentView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
=======
        cell.contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
>>>>>>> e84c6dc7c6d3a92570899052ef7fc7809901a96b
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
<<<<<<< HEAD
        return CGSize(width: view.frame.size.width / 2.5, height: 195)
    }
    
    
}


// TableView Extension
extension BoxDetailViewController : UITableViewDataSource , UITableViewDelegate{
    
    
    
    
    // MARK: -> Tableview Protocles & Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // ASSING Data in cell base on specific cell.
        switch indexPath.row {
        case 0:
            // Crete collection view in tableview cell
            let cell = tableView.dequeueReusableCell(withIdentifier: "\(CustomTableViewCellForCollectionView.cell)", for: indexPath) as! CustomTableViewCellForCollectionView
            cell.collectionView = collectionViewContiner
            cell.collectionViewCalls()
            print("Cell One")
            return cell
        case 1..<db.count:
            // Regular tableview cell
            let cell = tableView.dequeueReusableCell(withIdentifier: "\(CustomTableViewCellForRegularTableViewDisplay__.cell)", for: indexPath) as! CustomTableViewCellForRegularTableViewDisplay__
            //            cell.setUpSubViews(object: db[indexPath.row])
            cell.setUpSubViews(object: db[indexPath.row])
            print("Cell Two")
            return cell
        default:
            print("Cell Nothing Available")
            return UITableViewCell()
        }
        
        //        if indexPath.row == 0  {
        //
        //
        //        } else if indexPath.row == 1 {
        //
        //
        //        } else {
        //
        //
        //        }
        
    }
    
    // Change individual cell height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 200.0
        } else {
            return 100.00
        }
        // Use the default size for all other rows.
        //          return UITableView.automaticDimension
    }
    
    
    
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        // ASSING Data in cell base on specific cell.
    //        if db[indexPath.row].cell == 1 {
    //            let cell = tableView.dequeueReusableCell(withIdentifier: "\(CustomTableViewCellForCollectionView.cell)", for: indexPath) as! CustomTableViewCellForCollectionView
    //
    //            print("Cell One")
    //            return UITableViewCell()
    //
    //        } else if db[indexPath.row].cell == 2 {
    //            let cell = tableView.dequeueReusableCell(withIdentifier: "\(CustomTableViewCellForRegularTableViewDisplay__.cell)", for: indexPath) as! CustomTableViewCellForRegularTableViewDisplay__
    //            cell.setUpSubViews(object: db[indexPath.row])
    //            print("Cell Two")
    //            return cell
    //
    //        } else {
    //
    //            print("Cell Nothing Available")
    //            return UITableViewCell()
    //        }
    //
    //    }
    
    
    
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        //        tableView.allowsSelection = false
    //        let boxDetailViewController = BoxDetailViewController()
    //        present(boxDetailViewController, animated: true, completion: nil)
    //    }
    //
    
    
    
    //    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //
    //        let myLabel = UILabel(frame: CGRect(x: 20, y: 0, width: 200 , height: 30))
    //        //        myLabel.backgroundColor = .systemPink
    //        myLabel.font = UIFont.boldSystemFont(ofSize: 25)
    //        myLabel.text = "H O M E"
    //
    //        let headerView = UIView()
    //        headerView.backgroundColor = .white
    //        headerView.addSubview(myLabel)
    //
    //        return headerView
    //    }
    
    
    
    
    
=======
        return CGSize(width: view.frame.size.width / 2.5, height: 230)
    }
    
>>>>>>> e84c6dc7c6d3a92570899052ef7fc7809901a96b
    
    
    
    
    
    
}

