//
//  HorizontalScrollCell.swift
//  RealEstateHomeScreen
//
//  Created by Abouzar Moradian on 9/12/24.
//

import UIKit

class HorizontalScrollCell: UICollectionViewCell {

    static let identifier = "HorizontalScrollCell"
    @IBOutlet weak var imageView: UIImageView! {
        
        didSet{
            
            imageView.layer.cornerRadius = 15
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
