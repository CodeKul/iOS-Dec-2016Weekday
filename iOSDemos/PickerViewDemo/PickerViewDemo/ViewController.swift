//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Varun on 06/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var myLbl: UILabel!
    var arrData1 : Array<String> = []
    var arrData2 : Array<String> = []
    var arrData3 : Array<String> = []
    
    var str1 = ""
    var str2 = ""
    var str3 = ""
    
    var pickerView : UIPickerView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView = UIPickerView(frame: CGRect(x: 0, y: 176, width: 320, height: 216))
        
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        self.view.addSubview(pickerView!)
        
        arrData1 = Array(arrayLiteral: "Manish", "Shraddha", "Varun","Aniruddha","Nikhil")
        arrData2 = ["Yamaha","RE","KTM","Benilli","BMW","TVS"]
        
        arrData3 = ["Delhi", "Noida","Jammu","Chennai"]
        str1 = arrData1[0]
        str2 = arrData2[0]
        str3 = arrData3[0]
        
        myLbl.text = str1 + " " + str2 + " " + str3

    }

    // Datasource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return arrData1.count
        }
        else if component == 1 {
            return arrData2.count
        }
        return arrData3.count
    }
    
    
    // Delegate

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return arrData1[row]
        }
        else if component == 1 {
            return arrData2[row]
        }

        return arrData3[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            str1 = arrData1[row]
        }
        else if component == 1{
            str2 = arrData2[row]
        }
        else {
            str3 = arrData3[row]
        }
        
        myLbl.text = str1 + " " + str2 + " " + str3
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

