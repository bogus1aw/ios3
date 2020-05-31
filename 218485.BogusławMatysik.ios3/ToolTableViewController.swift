//
//  ToolTableViewController.swift
//  218485.BogusławMatysik.ios3
//
//  Created by Bogusław Matysik on 31/05/2020.
//  Copyright © 2020 Bogusław Matysik. All rights reserved.
//

import UIKit

class ToolTableViewController: UITableViewController {
    
    var tools = [Tool]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleTools()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tools.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "ToolTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ToolTableViewCell else {
            fatalError("The dequeued cell is not an instance of ToolTableViewCell.")
        }
        
        let tool = tools[indexPath.row]

        cell.nameLabel.text = tool.name
        cell.photoImageView.image = tool.photo
//            = tool.rating

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
    
    //MARK: Privete Methods
    private func loadSampleTools(){
        
        let photo1 = UIImage(named: "tool1")
        let photo2 = UIImage(named: "tool2")
        let photo3 = UIImage(named: "tool3")
        
        guard let tool1 = Tool(name: "Electric Wheelbarrow", photo: photo1, rating: 5) else {
            fatalError("Unable to instantiate tool1")
        }
        guard let tool2 = Tool(name: "Wheelbarrow", photo: photo2, rating: 4) else {
            fatalError("Unable to instantiate tool2")
        }
        guard let tool3 = Tool(name: "Screwdriver", photo: photo3, rating: 2) else {
            fatalError("Unable to instantiate tool3")
        }

        tools += [tool1, tool2, tool3]
        
        
    }
}
