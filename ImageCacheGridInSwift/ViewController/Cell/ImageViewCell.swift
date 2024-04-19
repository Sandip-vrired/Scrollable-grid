//
//  ImageViewCell.swift
//  ScrollableGrid
//
//  Created by Sandip on 17/04/24.
//

import UIKit

class ImageViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    func setupCell(str:String) {
        ImageDownloader.shared.loadImageUsingCache(withUrl: str) { image in
            self.imageView.image = image
            
        }
    }
}
