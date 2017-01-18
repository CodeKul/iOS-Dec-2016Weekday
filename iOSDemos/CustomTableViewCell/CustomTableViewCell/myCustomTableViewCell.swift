//
//  myCustomTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Varun on 11/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class myCustomTableViewCell: UITableViewCell {

    @IBOutlet var myImageView : UIImageView!
    @IBOutlet var myNameLbl : UILabel!
    @IBOutlet var myAgeLbl : UILabel!
    @IBOutlet var myMatches : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
