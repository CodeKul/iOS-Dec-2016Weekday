//
//  Player.swift
//  CustomTableViewCell
//
//  Created by Varun on 11/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class Player: AnyObject {

    var name : String
    var age : String
    var matches : String
    var imageName : String
    
    init() {
        name = ""
        age = ""
        matches = ""
        imageName = ""
    }
    
    func setPlayerData(name : String, age : String, matches : String, imageName : String) {
        
        self.name = name
        self.age = age
        self.matches = matches
        self.imageName = imageName
    }
}
