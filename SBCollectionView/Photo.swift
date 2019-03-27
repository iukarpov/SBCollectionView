//
//  Photo.swift
//  SBCollectionView
//
//  Created by Igor on 22/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

struct Photo {
    
    var caption: String
    var comment: String
    var image: UIImage
    
    
    init(caption: String, comment: String, image: UIImage) {
        self.caption = caption
        self.comment = comment
        self.image = image
    }
}

