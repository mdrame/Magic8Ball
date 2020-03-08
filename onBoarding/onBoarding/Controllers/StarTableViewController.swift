//
//  StarTableViewController.swift
//  PastBox
//
//  Created by Mohammed Drame on 2/24/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class StarTableViewController: ViewController { // Inherate first viewController and override needed method
    
    
     let starVcdataBase = PastBoxModel.starBoxData()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return starVcdataBase.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellIdentifier, for: indexPath) as! CustomTableViewCell
                   cell.setUpView(object: dataBase[indexPath.row])
               cell.accessoryType = UITableViewCell.AccessoryType.checkmark
            cell.setUpView(object: starVcdataBase[indexPath.row])
               return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          let cell = tableView.cellForRow(at: indexPath)
          cell?.selectionStyle = .none

//
          
      }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
