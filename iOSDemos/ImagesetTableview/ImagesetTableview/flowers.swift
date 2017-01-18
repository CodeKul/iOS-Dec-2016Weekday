//
//  Flowers.swift
//  ImagesetTableview
//
//  Created by Varun on 12/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class flowers: AnyObject {
    
    var myImage : String
    var Name    : String
    
      init() {
        
        myImage = " "
        Name    = " "
        
    }
    func setFlowersInfo(Name : String ,myImage :String) {
        self.Name    = Name
        self.myImage = myImage
        
    }
}
