//
//  ViewCartTableViewCell.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-23.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewCartTableViewCell: UITableViewCell {

    
    @IBOutlet weak var rpid: UILabel!
    
    @IBOutlet weak var rname: UILabel!
    
    @IBOutlet weak var rpice: UILabel!
    
    @IBOutlet weak var rtotal: UILabel!
    @IBOutlet weak var rqty: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
