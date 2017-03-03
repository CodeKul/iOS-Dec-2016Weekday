//
//  ViewController.swift
//  SQLiteDemo2
//
//  Created by Codekul on 16/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var txtEmpId : UITextField!
    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtSalary : UITextField!
    
    var db : OpaquePointer? = nil
   
    override func viewDidLoad() {
        super.viewDidLoad()

        self.openDB()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func openDB() {
        let fileManager = FileManager.default
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let destinationPath = documentDirectoryPath.appending("EmpDB.db")
    
        print (destinationPath)
        
        if !fileManager.fileExists(atPath: destinationPath) {
            let sourcePath = Bundle.main.path(forResource: "EmpDB", ofType: "db")
            try! fileManager.copyItem(atPath: sourcePath!, toPath: destinationPath)
        }
        
        if sqlite3_open(destinationPath, &db) != SQLITE_OK {
            print("error opening database")
        }

    }
    
// SAVE
    func saveData() {
        if sqlite3_exec(db, "INSERT INTO Employes VALUES ('\(txtEmpId.text)', '\(txtName.text)','\(txtSalary.text)')", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db))
            print("error creating table: \(errmsg)")
        }
        else {
            print("Data saved successfully")
        }
        self.textClearTextField()
    }
    
// SHOW
    func getDataFromDB() {
        var statement: OpaquePointer? = nil
        if sqlite3_prepare_v2(db, "SELECT * FROM Employes", -1, &statement, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db))
            print("error preparing select: \(errmsg)")
        }
        while sqlite3_step(statement) == SQLITE_ROW {
            let empid = sqlite3_column_text(statement, 0)
            let empidString = String(cString: empid!)
            print("EmpId = \(empidString)")
        
            if let name = sqlite3_column_text(statement, 1) {
                let nameString = String(cString: name)
                print("name = \(nameString)")
            } else {
                print("name not found")
            }
            if let salary = sqlite3_column_text(statement, 2) {
                let salaryString = String(cString: salary)
                print("salary = \(salaryString)")
            } else {
                print("salary not found")
            }
        }
        if sqlite3_finalize(statement) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db))
            print("error finalizing prepared statement: \(errmsg)")
        }
        statement = nil
    }
    // UPDATE build is failing here in below code
    func updateDatabase(){
        
        let db = connectDatabase("Employes.db")
        var updateStatement: COpaquePointer = nil
        if sqlite3_prepare(db, "SELECT * FROM Employes", -1, &updateStatement, nil) == SQLITE_OK{
            if sqlite3_step(updateStatement) == SQLITE_DONE{
                print("Successfully update row.")
            }
            else{
                print("Could not update row.")
            }
        }
        else{
            print("UPDATE statement could not be prepared")
        }
        sqlite3_finalize(updateStatement)
        
        if sqlite3_close_v2(db) == SQLITE_OK{
            print("closed")
        }
    }
    func textClearTextField() {
        txtEmpId.text = " "
        txtName.text = " "
        txtSalary.text = " "
    }

    @IBAction func saveBtnClicked(_ sender: UIButton) {
        self.saveData()
    }
    @IBAction func showBtnClicked(_ sender: UIButton) {
        self.getDataFromDB()
    }
    
    @IBAction func searchBtnClicked (_ sender: UIButton){
    
    }
    @IBAction func updateBtnClicked (_ sender: UIButton){
        self.updateDatabase()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

