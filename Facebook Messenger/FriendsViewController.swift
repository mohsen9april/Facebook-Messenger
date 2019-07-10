//
//  MainViewController.swift
//  Facebook Messenger
//
//  Created by Mohsen Abdollahi on 7/10/19.
//  Copyright © 2019 Mohsen Abdollahi. All rights reserved.
//

import UIKit

class FriendsViewController: UICollectionViewController , UICollectionViewDelegateFlowLayout{
    
    private let cellId = "CellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        collectionView.alwaysBounceVertical = true
        
        collectionView.register(FriendsViewCell.self, forCellWithReuseIdentifier: cellId)
        
        //Set a Logout BarButton
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handlelogout))
    }
        @objc func handlelogout(){
               print(123)
        }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! FriendsViewCell
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width , height: 100)
    }
    
}

//MARK: - CollectionViewCell Class
class FriendsViewCell : UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCell()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewCell(){
        backgroundColor = UIColor.blue
    }
}
