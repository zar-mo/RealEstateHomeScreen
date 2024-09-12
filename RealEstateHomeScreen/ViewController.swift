//
//  ViewController.swift
//  RealEstateHomeScreen
//
//  Created by Abouzar Moradian on 9/12/24.
//

import UIKit

class ViewController: UIViewController {
  
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionCell()
        registerHorizontalScroll()
        registerClickableview()
        tableView.dataSource = self
    }
    
    func registerCollectionCell(){
        let nib = UINib(nibName: AmazonCollectionCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: AmazonCollectionCell.identifier)
    }
    
    func registerHorizontalScroll(){
        let nib = UINib(nibName: HorizontalScroll.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: HorizontalScroll.identifier)
    }
    
    func registerClickableview(){
        let nib = UINib(nibName: ClickableCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: ClickableCell.identifier)
    }
    

}


extension  ViewController:  UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
        case 0:
            
            let menuCell = tableView.dequeueReusableCell(withIdentifier: AmazonCollectionCell.identifier, for: indexPath) as? AmazonCollectionCell
            
            guard let cell = menuCell else {return UITableViewCell()}
            
            return cell
            
        case 1:
            
            let menuCell = tableView.dequeueReusableCell(withIdentifier: ClickableCell.identifier, for: indexPath) as? ClickableCell
            
            guard let cell = menuCell else {return UITableViewCell()}
            
            return cell
            
            
        default:
            
            let menuCell = tableView.dequeueReusableCell(withIdentifier: HorizontalScroll.identifier, for: indexPath) as? HorizontalScroll
            
            guard let cell = menuCell else {return UITableViewCell()}
            
            return cell
        }
        
        
    }
    
}
    
    
