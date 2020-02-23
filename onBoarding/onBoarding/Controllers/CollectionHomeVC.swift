//
//  CollectionHomeVC.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/20/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CollectionHomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(mainCollectionView)
        collectionViewConstraints()
    }
    
    lazy var mainCollectionView: UICollectionView = {
            
            let layOut = UICollectionViewFlowLayout()
            layOut.scrollDirection = .horizontal
            
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layOut)
            
            collectionView.register(MDCustomCollectionViewCell.self, forCellWithReuseIdentifier: MDCustomCollectionViewCell.cellIdentifier)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            collectionView.backgroundColor = .black
            
            return collectionView
        }()
        
        
      
        
        func collectionViewConstraints() {
            NSLayoutConstraint.activate([
                
                // width and height
                //                       mainCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
                //                       mainCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor),
                //            // Center in view controller
                //            mainCollectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                //            mainCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                // Trailing, Leading, Bottom, Top
                
                
                mainCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
                mainCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 40),
                
    //            mainCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
                
                mainCollectionView.heightAnchor.constraint(equalToConstant: self.view.frame.size.height / 4),
                mainCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -40)
                
                
                
                
            ])
        }
    
    

         // MARK: -> Collection View Delegate and Data Source.
         
     //        func numberOfSections(in collectionView: UICollectionView) -> Int {
     //            2
     //        }
         
         
         func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
             return 20
         }
         
         func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
             let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MDCustomCollectionViewCell.cellIdentifier, for: indexPath) as! MDCustomCollectionViewCell
             cell.contentView.backgroundColor = .orange
             return cell
         }
         
         func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
             return CGSize(width: 30, height: 150)
         }
         
         
    
    
    
    
    
        

}
