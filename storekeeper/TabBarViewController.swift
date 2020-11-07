//
//  TabBarViewController.swift
//  storekeeper
//
//  Created by Никита Гвоздиков on 07.11.2020.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    
    let listOfItems = WareHouseItem.getWareHouseItem()

    override func viewDidLoad() {
        super.viewDidLoad()
sendToVC()
    }
    

    func sendToVC() {
        let myWareHouseVc = viewControllers?.first as! myWareHouseTableViewController
        let wareHouseManage = viewControllers?.last as! wareHouseManageTableViewController
        
        myWareHouseVc.listOfItems = listOfItems
        wareHouseManage.listOfItems = listOfItems
        
    }


}
