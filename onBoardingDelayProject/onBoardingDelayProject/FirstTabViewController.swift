//
//  FirstTabViewController.swift
//  onBoardingDelayProject
//
//  Created by Mohammed Drame on 3/31/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class FirstTabViewController: UIViewController {
    let dummyDataBase = ["One", "Two", "Three" , "Four"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        view.addSubview(mainCollectionView)
        mainCollectionViewConstrain()
    }
    
    // Create CollectionView
    // Constrain CollectionView
    // Add collectionView to View
    
    lazy var mainCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let mainCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        mainCollectionView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        mainCollectionView.translatesAutoresizingMaskIntoConstraints = false
        mainCollectionView.register(CollectionVliewHeadCell.self, forCellWithReuseIdentifier:  CollectionVliewHeadCell.cellIdentifier)
        mainCollectionView.register(CollectionVIewButtomCell.self, forCellWithReuseIdentifier: CollectionVIewButtomCell.cellIdentifier)
        return mainCollectionView
    }()
    
    func mainCollectionViewConstrain() {
        NSLayoutConstraint.activate([
            mainCollectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
            mainCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }
    
    
    
}


extension FirstTabViewController:  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2 // Base on paramaid Array
        case 1:
            return 10
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell1 = mainCollectionView.dequeueReusableCell(withReuseIdentifier: CollectionVliewHeadCell.cellIdentifier, for: indexPath) as! CollectionVliewHeadCell
            return cell1
        case 1:
            let cell2 = mainCollectionView.dequeueReusableCell(withReuseIdentifier: CollectionVIewButtomCell.cellIdentifier, for: indexPath) as! CollectionVIewButtomCell
            return cell2
        default:
            let cell2 = mainCollectionView.dequeueReusableCell(withReuseIdentifier: CollectionVIewButtomCell.cellIdentifier, for: indexPath) as! CollectionVIewButtomCell
            return cell2
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
        return CGSize(width: view.frame.size.width / 2.5, height: 250)
        } else if indexPath.section == 1 {
            CGSize(width: view.frame.size.width , height: 150)
        }
        return CGSize(width: view.frame.size.width , height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left:0 , bottom: 10, right: 0)
    }
    
    
    
    
    
    
    
    
}
