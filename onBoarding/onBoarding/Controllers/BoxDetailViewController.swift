//
//  BoxDetailViewController.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/11/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class BoxDetailViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        collectionViewContiner.delegate = self
        collectionViewContiner.dataSource = self
        
        view.addSubview(collectionViewContiner)
        collectionViewConstrain()
    }
    
    
    // Create Collection View
    lazy var collectionViewContiner: UICollectionView = {
        // layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        // CollectionView
        let mainCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        mainCollectionView.backgroundColor = .white
        mainCollectionView.translatesAutoresizingMaskIntoConstraints = false
        mainCollectionView.register( MDCustomCollectionViewCell.self, forCellWithReuseIdentifier: MDCustomCollectionViewCell.cellIdentifier)
        // styling & constraints
        
        
        return mainCollectionView
    }()
    
    
    
    func collectionViewConstrain() {
       
        NSLayoutConstraint.activate([
            collectionViewContiner.topAnchor.constraint(equalTo: view.topAnchor),
            collectionViewContiner.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionViewContiner.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionViewContiner.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        
    }
    
  
}


extension BoxDetailViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 20
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MDCustomCollectionViewCell.cellIdentifier, for: indexPath) as! MDCustomCollectionViewCell
           cell.contentView.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
           return cell
       }
       
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: view.frame.size.width / 2, height: 200)
       }
       
    
    
    
    
    
    
}
