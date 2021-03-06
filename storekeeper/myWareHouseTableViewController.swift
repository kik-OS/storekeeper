//
//  myWareHouseTableViewController.swift
//  storekeeper
//
//  Created by Никита Гвоздиков on 07.11.2020.
//

import UIKit

class myWareHouseTableViewController: UITableViewController {

    var listOfItems: [WareHouseItem]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        listOfItems.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        listOfItems[section].type
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myItem", for: indexPath)
        
        let equpment = listOfItems[indexPath.section]
//        cell.textLabel?.text = equpment.name
        
        var content = cell.defaultContentConfiguration()

        switch indexPath.row {
        case 0:
            content.text = equpment.name
        default:
            content.text = "Количество на складе: \(equpment.quantity)"
        }
       
        
       
//        if equpment.status {
//            cell.detailTextLabel?.text = "Доступно"
//            cell.detailTextLabel?.textColor = .systemGreen
//        } else {
//            cell.detailTextLabel?.text = "Недоступно"
//            cell.detailTextLabel?.textColor = .systemRed
//        }
        cell.contentConfiguration = content

        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
