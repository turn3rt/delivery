//
//  DrinksTableViewController.swift
//  Standard-Fil-A
//
//  Created by Turner Thornberry on 2/23/18.
//  Copyright © 2018 Turner Thornberry. All rights reserved.
//

import UIKit

class DrinksTableViewController: UITableViewController {

    let menuItemsHelper = MenuItems()
    
    var drinkNames = [String]()
    var drinkImages = [UIImage]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinkNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "drinkItemCell", for: indexPath) as! SideItemCell
        
        cell.itemName.text = drinkNames[indexPath.row]
        cell.itemImage.image = drinkImages[indexPath.row]
        

        return cell
    }
    
    
    
    @IBAction func addItemClick(_ sender: UIButtonX) {
        
        let itemIndex = self.tableView.indexPathForView(view: sender as AnyObject)! //gets index of drink that user clicked
        let selectedDrink = Item(name: self.drinkNames[itemIndex.row],
                                 image: self.drinkImages[itemIndex.row],
                                 price: 5.00)
        
        userOrder.append(selectedDrink)
        
        totalPrice += (selectedDrink.price) //updates total price to reflect root item and side
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    

}
