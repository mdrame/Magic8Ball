//
//  StarTableViewController.swift
//  onBoardingDelayProject
//
//  Created by Mohammed Drame on 4/5/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class StarTableViewController: PastBoxTablViewController { // Inherate first viewController and override needed method
    
    
    //    let starVcdataBase = PastBoxModel.starBoxData()
    func starBoxData()->[PastBoxModel] {
        let db = [PastBoxModel(dataImage: "weather", dataLabel: "Fresh Breath Dental Bond"),
                  PastBoxModel(dataImage: "weather", dataLabel: "Fresh Breath Dental Bond"),
                  PastBoxModel(dataImage: "weather", dataLabel: "Fresh Breath Dental Bond")]
        return db
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return starBoxData().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellIdentifier, for: indexPath) as! CustomTableViewCell
        cell.setUpView(object: starBoxData()[indexPath.row])
        cell.accessoryType = UITableViewCell.AccessoryType.checkmark
        cell.setUpView(object: starBoxData()[indexPath.row])
        return cell
    }
    
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let cell = tableView.cellForRow(at: indexPath)
            cell?.selectionStyle = .none
            cell?.accessoryType = UITableViewCell.AccessoryType.none
             tableView.deselectRow(at: indexPath, animated: true)
            print("Select Row")
        }
    
        func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
            let cell = tableView.cellForRow(at: indexPath)
            cell?.selectionStyle = .none
            cell?.accessoryType = UITableViewCell.AccessoryType.checkmark
             tableView.deselectRow(at: indexPath, animated: true)
            print("DidDeSelect Row")
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

