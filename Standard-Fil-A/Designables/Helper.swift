//
//  Helper.swift
//  Standard-Fil-A
//
//  Created by Turner Thornberry on 1/24/18.
//  Copyright © 2018 Turner Thornberry. All rights reserved.
//

import Foundation
import UIKit

var userOrder = [Item]()
var totalPrice = Double()


class Helper {
    

}

extension UIApplication {
    class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let tabController = controller as? UITabBarController {
            return topViewController(controller: tabController.selectedViewController)
        }
        if let navController = controller as? UINavigationController {
            return topViewController(controller: navController.visibleViewController)
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
    
    
    
}

extension UITableView {
    func indexPathForView(view: AnyObject) -> NSIndexPath? {
        let originInTableView = self.convert(CGPoint(), from: (view as! UIView))
        return self.indexPathForRow(at: originInTableView) as NSIndexPath?
    }
}
