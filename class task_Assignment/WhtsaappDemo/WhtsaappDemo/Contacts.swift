//
//  Contacts.swift
//  WhtsaappDemo
//
//  Created by Varun on 17/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class Contacts: AnyObject {
    
    var imageview : String
    var name: String
    var status: String
    var age: String
    
     init() {
        imageview = " "
        name      = " "
        status    = " "
        age       = " "
        
    }
    func contactData(name : String,status : String, age : String , imageview : String)  {
        
        self.name      = name
        self.imageview = imageview
        self.status    = status
        self.age       = age
        
    }

}
