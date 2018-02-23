//
//  MenuItemCell.swift
//  Standard-Fil-A
//
//  Created by Turner Thornberry on 1/18/18.
//  Copyright © 2018 Turner Thornberry. All rights reserved.
//

import UIKit

class MenuItemCell: UITableViewCell {
    
    var helper = Helper()

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    
    
    @IBAction func quickOrderClick(_ sender: UIButtonX) {
        let alert = UIAlertController(title: "Select one of the following", message: nil, preferredStyle: .alert)
        
        let justEntree = UIAlertAction(title: "Order just the entree", style: .default) { (action) in
            print("entree clicked")
            
            
        }
        
        let makeItAMeal = UIAlertAction(title: "Make it a meal (+$2.99)", style: .destructive) { (action) in
            print("make a meal click")
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("cancelled")
            
        }
        alert.addAction(justEntree)
        alert.addAction(makeItAMeal)
        alert.addAction(cancel)
        
        
        UIApplication.topViewController()?.present(alert, animated: true, completion: nil)
        
    }
    
    
    
}


