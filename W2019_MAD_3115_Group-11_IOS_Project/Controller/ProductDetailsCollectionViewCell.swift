//
//  ProductDetailsCollectionViewCell.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-22.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ProductDetailsCollectionViewCell: UICollectionViewCell
{
    
    @IBOutlet weak var lblpid: UILabel!
 
    @IBOutlet weak var lblpimage: UIImageView!

    @IBOutlet weak var lblpname: UILabel!
    

    @IBOutlet weak var lblprice: UILabel!
    
    @IBOutlet weak var lblqty: UITextField!
    
    @IBOutlet weak var btnadd1: UIButton!
    
    @IBAction func qtystepper(_ sender: UIStepper) {
        
    lblqty.text=String(Int(sender.value))
        
    }
    
    
}
