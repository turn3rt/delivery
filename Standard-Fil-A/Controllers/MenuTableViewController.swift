//
//  MenuTableViewController.swift
//  Standard-Fil-A
//
//  Created by Turner Thornberry on 1/18/18.
//  Copyright © 2018 Turner Thornberry. All rights reserved.
//

import UIKit
import Foundation

class MenuTableViewController: UITableViewController {
    let menuItemsHelper = MenuItems()

    
    var menuItemLabels = [String]() //these get passed the data from CatagorySelectVC
    var menuItemImages = [UIImage]() //from the prepareForSegue method in CatagorySelectVC, so they know what to populate the menu items with
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
 
    }



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItemLabels.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuItemCell", for: indexPath) as! MenuItemCell
  
        cell.itemName.text = menuItemLabels[indexPath.row]
        cell.itemImage.image = menuItemImages[indexPath.row]
        

        return cell
    }
    


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addedItem" {

            let menuDetailVC = segue.destination as! SidesTableViewController //tells segue where it's "going"
            let rootItemIndex = self.tableView.indexPathForView(view: sender as AnyObject)! //gets index path of tableViewCell that segue button was on
            let selectedItem = Item(name: self.menuItemLabels[rootItemIndex.row],  //creates new item, with properties that the user selects
                                    image: self.menuItemImages[rootItemIndex.row],
                                    price: 5.00)
            menuDetailVC.rootItem = selectedItem //makes root item in Menu DetailVC whwat they just picked
            
            menuDetailVC.menuItemLabels = menuItemsHelper.sideItemLables //passes the array of side item names to menuImages var in sidesTableVC
            
                var menuImages = [UIImage]() //passes side item images to sideTableVC
                for i in 1...menuItemsHelper.sideItemLables.count {
                    let image = UIImage(named: "\(i)_Sides.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages //passes the array of side item images to menuImages var in sidesTableVC
            
        }
    }
    

}
