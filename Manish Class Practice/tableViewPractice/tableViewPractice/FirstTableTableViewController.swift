//
//  FirstTableTableViewController.swift
//  tableViewPractice
//
//  Created by Codekul on 31/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class FirstTableTableViewController: UITableViewController {

    var fruits = ["Apple","Apricot","Banana","Blueberry","Cantaloupe","Cherry","Clementine","Coconut","Cranberry","Fig","Grapes","Grape fruit","Kiwi Fruit","Lemon","Lime","Lychee","Mandarin","Mango","Melon","Orange","Peach","Raspberry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        let fruitName = fruits[indexPath.row]
        cell.textLabel?.text = fruitName
        cell.detailTextLabel?.text = "Delicious!"
        cell.imageView?.image = UIImage(named: fruitName)
        
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Fruits Names"
    }
}
