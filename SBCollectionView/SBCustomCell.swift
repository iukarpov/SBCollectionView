//
//  CustomCollectionViewCell.swift
//  SBCollectionView
//
//  Created by Igor on 22/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class SBCustomCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0/255, green: 102/255, blue: 0/255, alpha: 1.0)
        return view
    }()
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    lazy var captionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Avenir Next Regular", size: 14)
        return label
    }()
    
    lazy var commentLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 10)
        label.numberOfLines = 3
        return label
    }()
    
    func setupViews() {
        containerView.layer.cornerRadius = 6
        containerView.layer.masksToBounds = true
        addSubview(containerView)
        containerView.addSubview(imageView)
        containerView.addSubview(captionLabel)
        containerView.addSubview(commentLabel)
    }
    
    override func layoutSubviews() {
        containerView.frame = CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height)
        imageView.frame = CGRect(x: 0, y: 0, width: containerView.frame.width, height: containerView.frame.height - 70)
        captionLabel.frame = CGRect(x: 4, y: imageView.frame.height + 5, width: imageView.frame.width - 8, height: 18)
        commentLabel.frame = CGRect(x: 4, y: imageView.frame.height + 20, width: imageView.frame.width - 8, height: 50)
    }
}




