//
//  myCustomTableViewCell.swift
//  WhtsaappDemo
//
//  Created by Varun on 17/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class myCustomTableViewCell: UITableViewCell {
    
    @IBOutlet var imageview : UIImageView!
    @IBOutlet var myName    : UILabel!
    @IBOutlet var myStatus   : UILabel!
    @IBOutlet var myAge    : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
