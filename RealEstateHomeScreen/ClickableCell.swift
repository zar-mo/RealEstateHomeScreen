//
//  ClickableCell.swift
//  RealEstateHomeScreen
//
//  Created by Abouzar Moradian on 9/12/24.
//

import UIKit

class ClickableCell: UITableViewCell {

    static let identifier = "ClickableCell"
    @IBOutlet weak var containerView: UIControl!{
        didSet{
            
            containerView.layer.shadowRadius = 25
            containerView.layer.borderWidth = 1
            containerView.layer.borderColor = UIColor.lightGray.cgColor
            containerView.layer.cornerRadius = 25


            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func containerButton(_ sender: UIControl) {
        
        print("clicked")
    }
}
