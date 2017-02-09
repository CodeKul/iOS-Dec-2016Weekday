//
//  ViewController.swift
//  WhtsaappDemo
//
//  Created by Varun on 17/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    var arr : Array<Contacts>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let Contact1 = Contacts()
        Contact1.contactData(name :"Barbi", status :"Happy", age :"14", imageview :"doll1.jpeg")
        
        let Contact2 = Contacts()
        Contact2.contactData(name :"Barbi1", status :"Happy", age :"16", imageview :"doll2.jpeg")
        
        let Contact3 = Contacts()
        Contact3.contactData(name :"Brids1", status :"Happy", age :"10", imageview :"image1.jpeg")
        
        let Contact4 = Contacts()
        Contact4.contactData(name :"Brids2", status :"Happy", age :"6", imageview :"image4.jpeg")
        
        let Contact5 = Contacts()
        Contact5.contactData(name :"Brids3", status :"Happy", age :"5", imageview :"image2.jpeg")
        

        arr = [Contact1,Contact2,Contact3,Contact4,Contact5]
        
    }

    
    //TableView dataSouce
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (arr?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //var cell : UITableViewCell?
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! myCustomTableViewCell
        let Contacts  = arr?[indexPath.row]
        
        cell.imageview.image = UIImage(named: (Contacts?.imageview)!)
        cell.imageview.layer.cornerRadius = cell.imageview.frame.size.height/2.0
        cell.imageview.clipsToBounds = true
        
        cell.myName.text = Contacts?.name
        cell.myStatus.text = Contacts?.status
        
        cell.myAge.text = Contacts?.age
        return cell
    }
    // tableView Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Contacts  = arr?[indexPath.row]
        
        print("Name : \(Contacts?.name)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

