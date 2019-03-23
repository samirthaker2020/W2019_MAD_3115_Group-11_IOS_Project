//
//  ShoppingCart.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-23.
//  Copyright © 2019 Owner. All rights reserved.
//

import Foundation
class ShoppingCart
{
     static let sharedcart = ShoppingCart()
    var check:Bool?
    private var cartid:Int?
    var productid:String?
    var quantity:Int?
    var dateadded=Date()
    var count:Int?
    var subtotal:Float?
    var total:Float?
    var productname:String=""
    var price:Float=0.0
    var tprice:Float?
    var productList = [ShoppingCart]()
    var orderedProduct = Dictionary<Int,[ShoppingCart]>()
    init()
    {
        self.cartid=Int()
        self.productid=String()
        self.quantity=Int()
        self.dateadded=Date()
    }
    
    init(proid:String,pname:String,pprice:Float,qty:Int,pdate:Date)
    {
        self.productid=proid
        self.productname=pname
        self.price=pprice
        self.quantity=qty
        self.dateadded = pdate
    }
    
    
    
    func addcartitem(shop:ShoppingCart)->Bool
    {
        do{
            try  self.productList.append(shop)
            check=true
        }
        catch{check=false}
        return check!
    }
}
