//
//  ViewController.swift
//  Standard-Fil-A
//
//  Created by Turner Thornberry on 1/18/18.
//  Copyright © 2018 Turner Thornberry. All rights reserved.
//

import UIKit
import Foundation


class CatagorySelectTableViewController: UITableViewController {
    @IBOutlet var cartBarItem: UIBarButtonItem!
    
    let menuItemsHelper = MenuItems()
    
    let menuCatagories = ["Breakfast",
                          "Entrées",
                          "Salads",
                          "Sides",
                          "Kid's Meals",
                          "Treats",
                          "Drinks",
                          "Sauces",
                          "Dressings"]
    
    
    var menuIcons = [UIImage]()

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuCatagories.count
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.title = "Order Total: " + String(format: "$%.2f", totalPrice)
        
        
        for i in 1...menuCatagories.count {
            let image = UIImage(named: "\(i)_Category.png")
            menuIcons.append(image!)
        }
        
        if userOrder.count == 0 {
            self.navigationItem.rightBarButtonItem?.image = nil
        } else {
            self.navigationItem.rightBarButtonItem?.image = #imageLiteral(resourceName: "FatBitchBin.png")
        }

        
        
        //self.title = "$" + String(describing: totalPrice)

        //self.navigationController?.navigationItem.title = "asssss"
        //self.navigationController?.title = "$" + String(describing: totalPrice)
    }
    
    override func viewDidLoad() {
        
        
        //self.navigationController?.navigationItem.title = "asssss"
        //self.navigationController?.title = "$" + String(describing: totalPrice)
    }
    
    //MARK: Table View Delegate Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catagoryCell", for: indexPath) as! CatagoryCell
        
        cell.catagoryName.text = menuCatagories[indexPath.row]
        cell.catagoryImage.image = menuIcons[indexPath.row]
        
        return cell
    }


    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "welcomeHeader") as! HeaderCell
        
        cell.headerLabel.text = "Welcome Turner, select a menu catagory below..."
        
        return cell

    }
    
    //MARK: Prepare for Segue stuff
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "selectedCatagory" {
            let selectedCellIndex = self.tableView.indexPathForSelectedRow!.row
            let menuDetailVC = segue.destination as! MenuTableViewController
            
            menuDetailVC.title = String(format: "$%.2f", totalPrice)
            
            
            switch selectedCellIndex {
            case 0: //Breakfast
                menuDetailVC.menuItemLabels = menuItemsHelper.breakfastItemLabels
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.breakfastItemLabels.count {
                    let image = UIImage(named: "\(i)_Breakfast.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
                
            case 1: // Entrees
                menuDetailVC.menuItemLabels = menuItemsHelper.entreesItemLabels
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.entreesItemLabels.count {
                    let image = UIImage(named: "\(i)_Entree.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
                
            case 2: // Salads
                menuDetailVC.menuItemLabels = menuItemsHelper.saladItemLabels
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.saladItemLabels.count {
                    let image = UIImage(named: "\(i)_Salad.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
                
            case 3: // Sides
                menuDetailVC.menuItemLabels = menuItemsHelper.sideItemLables
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.sideItemLables.count {
                    let image = UIImage(named: "\(i)_Sides.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
                
            case 4: // Kids Meals
                menuDetailVC.menuItemLabels = menuItemsHelper.kidsItemLables
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.kidsItemLables.count {
                    let image = UIImage(named: "\(i)_kidsmeal.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
                
            case 5: // Treats
                menuDetailVC.menuItemLabels = menuItemsHelper.treatItemLabels
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.treatItemLabels.count {
                    let image = UIImage(named: "\(i)_treats.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
                
            case 6: // Drinks
                menuDetailVC.menuItemLabels = menuItemsHelper.drinkItemLables
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.drinkItemLables.count {
                    let image = UIImage(named: "\(i)_drinks.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
                
            case 7: // Sauces
                menuDetailVC.menuItemLabels = menuItemsHelper.sauceItemLabels
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.sauceItemLabels.count {
                    let image = UIImage(named: "Sauce_\(i).png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
                
            case 8: // Dressings
                menuDetailVC.menuItemLabels = menuItemsHelper.dressingItemLables
                var menuImages = [UIImage]()
                for i in 1...menuItemsHelper.dressingItemLables.count {
                    let image = UIImage(named: "\(i)_dressing.png")
                    menuImages.append(image!)
                }
                menuDetailVC.menuItemImages = menuImages
                
                
            default:
                print("selection out of range")
            }
            

        }
    }
}

