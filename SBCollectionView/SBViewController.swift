//
//  SBViewController.swift
//  SBCollectionView
//
//  Created by Igor on 22/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class  SBViewController: UICollectionViewController{
    
    var photos: [Photo] = []
    
    override func viewDidLoad() {
        collectionView.register(SBCustomCell.self, forCellWithReuseIdentifier: String(describing: SBCustomCell.self))
        photos = getPhoto()
        collectionView?.contentInset = UIEdgeInsets(top: 23, left: 5, bottom: 10, right: 5)
        if let layout = collectionView?.collectionViewLayout as? SBCollectionViewLayout {
            layout.delegate = self
        }
        if let patternImage = UIImage(named: "Pattern") {
            view.backgroundColor = UIColor(patternImage: patternImage)
        }
        collectionView?.backgroundColor = UIColor.clear
    }
    
    func getPhoto() -> [Photo]{
        var photoArray = [Photo]()
        let photo1 = Photo(caption: "Little and Large", comment: "Brian and Matt meet for the very first time.", image:UIImage(imageLiteralResourceName: "01"))
        let photo2 = Photo(caption: "Shiny Happy People", comment: "There are so many happy people at RWDevCon - it's amazing.", image:UIImage(imageLiteralResourceName: "02"))
        let photo3 = Photo(caption: "Need More Lanyards", comment: "The moment it all became very real. The conference really was happening!", image:UIImage(imageLiteralResourceName: "03"))
        let photo4 = Photo(caption: "Thank You Sponsors", comment: "Without you we wouldn't have been able to put on this amazing conference.", image:UIImage(imageLiteralResourceName: "04"))
        let photo5 = Photo(caption: "TUTORIAL TEAM ASSEMBLE!", comment: "The Avengers certainly have nothing on this lot!", image:UIImage(imageLiteralResourceName: "05"))
        let photo6 = Photo(caption: "But, But, Delegates", comment: "Matthijs, stop going on about architecture, we're trying to eat!", image:UIImage(imageLiteralResourceName: "06"))
        
        photoArray.append(photo1)
        photoArray.append(photo2)
        photoArray.append(photo3)
        photoArray.append(photo4)
        photoArray.append(photo5)
        photoArray.append(photo6)
        return photoArray
    }
}

extension SBViewController{
    
    override  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    override  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SBCustomCell.self), for: indexPath)
        if let myCell = cell as? SBCustomCell {
            myCell.imageView.image = photos[indexPath.row].image
            myCell.captionLabel.text = photos[indexPath.row].caption
            myCell.commentLabel.text = photos[indexPath.row].comment
        }
        return cell
    }
}

extension SBViewController : SBCollectionViewLayoutDelegate {
    
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat {
        print("Высота фото",photos[indexPath.item].image.size.height)
        return (photos[indexPath.item].image.size.height)
    }
    
}










