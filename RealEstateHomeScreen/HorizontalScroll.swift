//
//  HorizontalScroll.swift
//  RealEstateHomeScreen
//
//  Created by Abouzar Moradian on 9/12/24.
//

import UIKit

class HorizontalScroll: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let items = ["house1.jpg", "house2.jpg", "house3.jpg", "house4.jpg", "house5.jpg", "house6.jpg", "house7.jpg", "house8.jpg", "house9.jpg"] // Sample data
    
    static let identifier = "HorizontalScroll"

    
    override func awakeFromNib() {
        super.awakeFromNib()
        registerCell()
        
        

        // Set up the collection view layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.showsHorizontalScrollIndicator = false // Hide horizontal scroll indicator if desired
  
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
   
    }
    
    func registerCell(){
        
        let nib = UINib(nibName: HorizontalScrollCell.identifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: HorizontalScrollCell.identifier)
    }
    
    
}

extension HorizontalScroll : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    // MARK: - UICollectionView DataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalScrollCell.identifier, for: indexPath) as? HorizontalScrollCell
        
        guard let cell = cell else { return UICollectionViewCell()}
        
        if let image = UIImage(named: items[indexPath.row]){
            cell.imageView.image = image
        }
       
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    
    // Set the size of each cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Set the cell size, you can customize this based on your layout
        let cellWidth = collectionView.bounds.width / 3 // Example: 3 cells visible at once
        return CGSize(width: cellWidth, height: collectionView.bounds.height)
    }
    
    // Optional: Set spacing between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10 // Set the horizontal spacing between cells
    }


    
}
