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
    var delegate: OnSelection?
    var index: Int?
    
    @IBOutlet weak var lblpid: UILabel!
 
    @IBOutlet weak var lblpimage: UIImageView!

    @IBOutlet weak var lblpname: UILabel!
    

    @IBOutlet weak var lblprice: UILabel!
    
    @IBOutlet weak var lblqty: UITextField!
    
    @IBOutlet weak var btnadd1: UIButton!
    
    @IBAction func qtystepper(_ sender: UIStepper) {
        
    lblqty.text=String(Int(sender.value))
        Extra.quantity=Int(sender.value)
    }
     
    /*override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }*/
    
    @IBAction func btnAddToCartClick(_ sender: UIButton)
    {
        if(lblqty.text=="")
        {
             
        }
        else
        {
            if let  i = index{
                if let d = delegate
                {
                    d.passProduct(index: i)
                }
            }
        }
       
    }
    
}

protocol OnSelection:class {
    func passProduct(index: Int)
}
    

