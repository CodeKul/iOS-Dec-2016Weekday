//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Varun on 11/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrData : Array<Player>?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let player1 = Player()
        player1.setPlayerData(name: "Dhoni", age: "35", matches: "90", imageName: "Dhoni.jpg")
        
        let player2 = Player()
        player2.setPlayerData(name: "Sachin", age: "43", matches: "200", imageName: "Sachin.jpg")
        
        let player3 = Player()
        player3.setPlayerData(name: "Virat", age: "28", matches: "53", imageName: "Virat.png")
        
        let player4 = Player()
        player4.setPlayerData(name: "Ashwin", age: "30", matches: "44", imageName: "Ashwin.png")
        
        arrData = [player1,player2,player3,player4]
        //self.view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrData!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! myCustomTableViewCell

        let player = arrData![indexPath.row]
        
        //cell.myImageView.layer.cornerRadius = cell.myImageView.frame.size.height/2.0
        cell.myImageView.clipsToBounds = true
        
    cell.myImageView.image = UIImage(named: player.imageName)
    
        cell.myNameLbl.text = player.name
        cell.myAgeLbl.text = player.age
        cell.myMatches.text = player.matches
        cell.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        return cell
    }
//delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let player = arrData![indexPath.row]

        print("Name: \(player.name)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

