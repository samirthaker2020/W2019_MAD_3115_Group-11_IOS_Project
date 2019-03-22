//
//  Products.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-21.
//  Copyright © 2019 Owner. All rights reserved.
//

import Foundation
class Products:IDisplay
{
       static let sharedproduct = Products()
    let productid:String
    var productname:String
    var productprice:Float
    var productdetails=Dictionary<String,Products>()
    init() {
        self.productid=String()
        self.productname=String()
        self.productprice=Float()
        
    }
    init(productid:String, productname:String, productprice:Float) {
        self.productid = productid
        self.productname = productname
        self.productprice = productprice
    }
    func addproducts(pid:String,prod:Products)
    {
        productdetails.updateValue(prod, forKey: pid)
    }
    
    func displaydata(msg: Bool, no: Int) {
        print(" ")
    }
    
    func displaydata() {
        print("------------------------------------------------------------------------------")
        print("Product ID:     ||   Product name:       ||   Product price:  ")
        print("------------------------------------------------------------------------------")
        
        for (_,v) in productdetails
        {
            print("\(v.productid)            ||   \(v.productname)         ||           \(v.productprice)")
            
        }
}
}
