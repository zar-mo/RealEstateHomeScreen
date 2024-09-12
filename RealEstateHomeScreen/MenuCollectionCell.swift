//
//  MenuCollectionCell.swift
//  RealEstateHomeScreen
//
//  Created by Abouzar Moradian on 9/12/24.
//

import UIKit

class MenuCollectionCell: UICollectionViewCell {

    static let identifier = "MenuCollectionCell"
    @IBOutlet weak var menuNameLabel: UILabel!
    @IBOutlet weak var menuImageView: UIImageView!
    
    @IBOutlet weak var cellContainer: UIView!{
        didSet{
            
            cellContainer.layer.cornerRadius = 15
            cellContainer.layer.borderWidth = 1
            cellContainer.layer.borderColor = UIColor.lightGray.cgColor

        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
