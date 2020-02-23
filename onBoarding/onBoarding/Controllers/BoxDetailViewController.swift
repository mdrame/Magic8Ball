//
//  BoxDetailViewController.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/11/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CollectionViewHomeVC: UIViewController {
    
    
    
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
            collectionViewContiner.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 5),
            collectionViewContiner.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionViewContiner.heightAnchor.constraint(equalToConstant: self.view.frame.size.height / 3),
            collectionViewContiner.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        
    }
    
    
} // VC Ends here


extension CollectionViewHomeVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MDCustomCollectionViewCell.cellIdentifier, for: indexPath) as! MDCustomCollectionViewCell
        cell.contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width / 2.5, height: 230)
    }
    
    
    
    
    
    
    
}
