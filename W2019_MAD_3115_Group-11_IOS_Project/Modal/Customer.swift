//
//  Customer.swift
//  Group_8_MAD3115_W2019
//
//  Created by gurminder on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation
class Customer:UserLogin
{
    
    var custid : Int?
    var customerName : String?
    var address : String?
    var creditCardInfo : Int?
    var email:String?
    var c:Bool?
    
    override init()
    {
        super.init()
        self.custid=Int()
        self.customerName=String()
        self.address=String()
        self.creditCardInfo=Int()
        self.email=String()
        self.c=Bool()
    }
    init(custid: Int,customerName: String,address: String,creditCardInfo: Int)
    {
        self.custid = custid
        self.customerName = customerName
        self.address = address
        self.creditCardInfo = creditCardInfo
        super.init()
    }
   
    
    func checklogin(uid:String,pass:String)->Bool
    {
        c=super.verifylogin(uid: uid,pass: pass)
        return c!
    }
    
    
    
    
}
