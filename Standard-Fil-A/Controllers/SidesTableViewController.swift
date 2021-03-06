//
//  SidesTableViewController.swift
//  Standard-Fil-A
//
//  Created by Turner Thornberry on 2/13/18.
//  Copyright © 2018 Turner Thornberry. All rights reserved.
//

import UIKit

class SidesTableViewController: UITableViewController {
    
    var rootItem = Item(name: String(),
                        image: UIImage(),
                        price: Double())

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "sideItemCell", for: indexPath) as! SideItemCell
        
        cell.itemName.text = menuItemLabels[indexPath.row]
        cell.itemImage.image = menuItemImages[indexPath.row]
        
        
        return cell
    }
    
    
    
    
    @IBAction func addToOrderClick(_ sender: UIButtonX) {
//        let itemIndex = self.tableView.indexPathForView(view: sender as AnyObject)!
//
//        let selectedSide = Item(name: self.menuItemLabels[itemIndex.row],
//                                image: self.menuItemImages[itemIndex.row],
//                                price: 5.00)
//        userOrder.append(rootItem) // appends root item without sides
//        userOrder.append(selectedSide)// appends the side itself
//        totalPrice += (rootItem.price + selectedSide.price)
////        self.navigationController?.popToRootViewController(animated: true)
//        print(userOrder)
    }
    
    
    
    
    
    
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addedSideItem" {
            let drinksVC = segue.destination as! DrinksTableViewController // tells segue where it's going
            
            drinksVC.drinkNames = menuItemsHelper.drinkItemLables //appends drink item labels to DrinkVC
            for i in 1...menuItemsHelper.drinkItemLables.count { //appends images to DrinkVC
                let image = UIImage(named: "\(i)_drinks.png")
                drinksVC.drinkImages.append(image!)
            }
            
            let itemIndex = self.tableView.indexPathForView(view: sender as AnyObject)!
            
            let selectedSide = Item(name: self.menuItemLabels[itemIndex.row],
                                    image: self.menuItemImages[itemIndex.row],
                                    price: 5.00)
            userOrder.append(rootItem) // appends root item without sides
            userOrder.append(selectedSide) // appends the side itself
            
            totalPrice += (rootItem.price + selectedSide.price) //updates total price to reflect root item and side
            print("total price is: \(totalPrice)")
            print("user order is: \(userOrder)")

            
            
        }
        
        
    

    }
    
    
    
//    let menuDetailVC = segue.destination as! SidesTableViewController //tells segue where it's "going"
//    let rootItemIndex = self.tableView.indexPathForView(view: sender as AnyObject)!
//    let selectedItem = Item(name: self.menuItemLabels[rootItemIndex.row],  //creates new item, with properties that the user selects
//        image: self.menuItemImages[rootItemIndex.row],
//        price: 5.00)
//    menuDetailVC.rootItem = selectedItem //makes root item in Menu DetailVC whwat they just picked
//
//    menuDetailVC.menuItemLabels = menuItemsHelper.sideItemLables //passes the array of side item names to menuImages var in sidesTableVC
//
//    var menuImages = [UIImage]()
//    for i in 1...menuItemsHelper.sideItemLables.count {
//    let image = UIImage(named: "\(i)_Sides.png")
//    menuImages.append(image!)
//    }
//    menuDetailVC.menuItemImages = menuImages //passes the array of side item images to menuImages var in sidesTableVC
    
}
