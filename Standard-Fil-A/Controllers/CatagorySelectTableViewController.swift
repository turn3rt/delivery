//
//  ViewController.swift
//  Standard-Fil-A
//
//  Created by Turner Thornberry on 1/18/18.
//  Copyright © 2018 Turner Thornberry. All rights reserved.
//

import UIKit

class CatagorySelectTableViewController: UITableViewController {

    
    let menuCatagories = ["Breakfast", "Entrées", "Salads", "Sides", "Kid's Meals", "Treats", "Drinks", "Sauces", "Dressings"]

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuCatagories.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catagoryCell", for: indexPath)
        
        
        
        return cell
    }


}

