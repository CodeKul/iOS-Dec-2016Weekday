//
//  ViewController.swift
//  Pickerviewassignment
//
//  Created by Varun on 10/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{

    @IBOutlet var myLbl: UILabel!
    
    var array1 :Array<String>=[]
    var array2 :Array<String>=[]
    
    var str  = " "
    var str1 = " "
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            
            
            array1 = ["red","pink","yellow","green","whight"]
            array2 = ["one","two","three","four","five"]
            str  = array1[0]
            str1 = array2[0]
            myLbl.text = str + "  " + str1
            

    }
//datasource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return array1.count
        
        }
        else {
            return array2.count
        }
        
    }
//delegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == 0 {
            return array1[row]
        }
        else {
        return array2[row]
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if component == 0 {
            
            str = array1[row]
        }
        else {
            str1 = array2[row]
        }
        myLbl.text = str + " " + str1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

