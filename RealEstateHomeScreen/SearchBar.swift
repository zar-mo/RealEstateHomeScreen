//
//  SearchBar.swift
//  RealEstateHomeScreen
//
//  Created by Abouzar Moradian on 9/12/24.
//

import UIKit

class SearchBar: UITableViewCell {

    static let identifier = "SearchBar"
    
    @IBOutlet weak var searchBarView: UIView! {
        didSet{
            searchBarView.layer.borderColor = UIColor.gray.cgColor
            searchBarView.layer.borderWidth = 1
            searchBarView.layer.cornerRadius = 15
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
