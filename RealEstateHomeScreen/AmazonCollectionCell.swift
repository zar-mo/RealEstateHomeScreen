//
//  AmazonCollectionCell.swift
//  RealEstateHomeScreen
//
//  Created by Abouzar Moradian on 9/12/24.
//

import UIKit

class AmazonCollectionCell: UITableViewCell {

    
    static let identifier = "AmazonCollectionCell"
    
    @IBOutlet weak var menuCollectionView: UICollectionView!
       
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        menuCollectionView.delegate = self
        menuCollectionView.dataSource = self
        registerMenuCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func registerMenuCell(){
        
        let nib = UINib(nibName: MenuCollectionCell.identifier, bundle: nil)
        menuCollectionView.register(nib, forCellWithReuseIdentifier: MenuCollectionCell.identifier)
    }
    
}

extension AmazonCollectionCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuCollectionCell.identifier, for: indexPath) as? MenuCollectionCell
        
        guard let cell = cell else {return UICollectionViewCell()}
        return cell
    }
}


extension AmazonCollectionCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let numColumns: CGFloat = 3
        let collectionWidth = collectionView.bounds.width
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let spaceBetweenCells = flowLayout.minimumInteritemSpacing * (numColumns - 1)
        let cellWidth = (collectionWidth - spaceBetweenCells) / numColumns
        
        return CGSize(width: cellWidth, height: cellWidth )
    }
    
    // Set vertical spacing between cells (line spacing)
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 10
        }
    
    // Optionally, set the horizontal spacing between items
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 10
        }
}

