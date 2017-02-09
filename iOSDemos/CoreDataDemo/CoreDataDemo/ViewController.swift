//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Codekul on 09/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet var txtRno : UITextField!
    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtMarks : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func saveButtonClicked(_ sender : UIButton) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let stu = NSEntityDescription.insertNewObject(forEntityName:"Student" , into:context)
        
        stu.setValue(txtRno.text, forKey: "rno")
        stu.setValue(txtName.text, forKey: "name")
        stu.setValue(txtMarks.text, forKey: "marks")
        
        appDelegate.saveContext()
        
        self.clearAllTextFields()
    }
    
    @IBAction func showButtonClicked(_ sender : UIButton) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
       let studentFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        
        do {
            let fetchedStudents = try context.fetch(studentFetch) as! [Student]
            
            for stu in fetchedStudents {
                print("Rno: \(stu.rno)\nName: \(stu.name)\nMarks: \(stu.marks)\n\n")
            }
            
        } catch {
            fatalError("Failed to fetch employees: \(error)")
        }
    }
    
    @IBAction func searchButtonClicked(_ sender : UIButton) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let studentFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        
        studentFetch.predicate = NSPredicate(format: "rno == %@", txtRno.text!)
        
        do {
            let fetchedStudents = try context.fetch(studentFetch) as! [Student]
            
            for stu in fetchedStudents {
                print("Rno: \(stu.rno)\nName: \(stu.name)\nMarks: \(stu.marks)\n\n")
            }
            
        } catch {
            fatalError("Failed to fetch employees: \(error)")
        }
    }

    @IBAction func updateButtonClicked(_ sender : UIButton) {

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let studentFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        
        studentFetch.predicate = NSPredicate(format: "rno == %@", txtRno.text!)
        
        do {
            let fetchedStudents = try context.fetch(studentFetch) as! [Student]
            
            fetchedStudents[0].setValue(txtName.text, forKey: "name")
            fetchedStudents[0].setValue(txtMarks.text, forKey: "marks")
            
            appDelegate.saveContext()
            
        } catch {
            fatalError("Failed to fetch employees: \(error)")
        }

    }
    func clearAllTextFields () {
        
        txtRno.text = ""
        txtName.text = ""
        txtMarks.text = ""
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

