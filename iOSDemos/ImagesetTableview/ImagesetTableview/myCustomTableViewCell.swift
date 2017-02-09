//
//  myCustomTableViewCell.swift
//  ImagesetTableview
//
//  Created by Varun on 12/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class myCustomTableViewCell: UITableViewCell {

    
    @ IBOutlet var myimage :UIImageView!
    @ IBOutlet var myLbl   :UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
