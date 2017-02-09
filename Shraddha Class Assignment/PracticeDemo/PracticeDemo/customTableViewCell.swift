//
//  customTableViewCell.swift
//  PracticeDemo
//
//  Created by Codekul on 26/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var myLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func btnClicked(_ sender: Any) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
