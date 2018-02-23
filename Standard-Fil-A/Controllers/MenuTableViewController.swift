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

    
    var menuItemLabels = [String]()
    var menuItemImages = [UIImage]()
    
    
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
            
//            let selectedCellIndex = self.tableView.indexPathForSelectedRow!.row
//            let selectedItem = Item(name:  menuItemLabels[selectedCellIndex],
//                            image: menuItemImages[selectedCellIndex],
//                            price: 5.00)
//
//            userOrder.append(selectedItem)

            
            
            let menuDetailVC = segue.destination as! SidesTableViewController
            let rootItemIndex = self.tableView.indexPathForView(view: sender as AnyObject)!
            let selectedItem = Item(name: self.menuItemLabels[rootItemIndex.row],
                                    image: self.menuItemImages[rootItemIndex.row],
                                    price: 5.00)
            menuDetailVC.rootItem = selectedItem
            
                menuDetailVC.menuItemLabels = menuItemsHelper.sideItemLables
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.sideItemLables.count {
                    let image = UIImage(named: "\(i)_Sides.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
            
        }
    }
    

}
