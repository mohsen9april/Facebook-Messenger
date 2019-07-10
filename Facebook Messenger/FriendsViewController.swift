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
        
        navigationItem.title = "Recent"
        
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
    
    //Create ImageView in Cell
    let profileImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 34
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    //Create Divider
    let dividerLineView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return view
    }()
    
    //Create ContainerView
    let containerView :  UIView = {
       let containerview = UIView()
        containerview.backgroundColor = .white
        return containerview
    }()
    
    //Create a Username Label
    let nameLabel : UILabel = {
       let label = UILabel()
        label.text = "Friend name"
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    //Create Message Lable
    let messageLabel : UILabel = {
        let label = UILabel()
        label.text = "Your friends Message and something else...."
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    //Create timeLabel
    let timeLabel : UILabel = {
        let label = UILabel()
        label.text = "12:06"
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    func setupViewCell(){
        backgroundColor = UIColor.white
        addSubview(profileImageView)
        addSubview(dividerLineView)
        addSubview(containerView)
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        dividerLineView.translatesAutoresizingMaskIntoConstraints = false
        containerView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        profileImageView.image = UIImage(named: "Mark_Z")
        profileImageView.topAnchor.constraint(equalTo: topAnchor,constant: (frame.height / 2) - 34).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: leftAnchor,constant: 15).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 68).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 68).isActive = true
        
        dividerLineView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        dividerLineView.leftAnchor.constraint(equalTo: leftAnchor, constant: 80).isActive = true
        dividerLineView.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        dividerLineView.heightAnchor.constraint(equalToConstant: 0.8).isActive = true
        
        containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 90).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        containerView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: (frame.height / 2) + 20 ).isActive = true
        
        containerView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 10).isActive = true
        
        containerView.addSubview(messageLabel)
        messageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        messageLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 10).isActive = true
        messageLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 10).isActive = true
        
        containerView.addSubview(timeLabel)
        timeLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        timeLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -10).isActive = true
        
        
    }
}
