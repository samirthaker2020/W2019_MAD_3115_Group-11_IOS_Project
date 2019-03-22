//
//  Customer.swift
//  Group_8_MAD3115_W2019
//
//  Created by gurminder on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation
class Customer
{
    var uid:String?
    var pass:String?
    var custid : Int?
    var customerName : String?
    var address : String?
    var creditCardInfo :String?
    var shipinfo:String?
    var email:String?
    var c:Bool?
    var customerdetails=Dictionary<String,Customer>()
     init()
    {
        self.uid=String()
        self.pass=String()
        self.custid=Int()
        self.customerName=String()
        self.address=String()
        self.creditCardInfo=String()
        self.email=String()
        self.c=Bool()
        
    }
    init(custid: Int,customerName: String,address: String,creditCardInfo: String,email:String,shipinfo:String,uid:String,pass:String)
    {
        self.shipinfo=shipinfo
        self.email=email
        self.custid = custid
        self.customerName = customerName
        self.address = address
        self.creditCardInfo = creditCardInfo
        self.uid=uid
        self.pass=pass
        
    }
   
    
    func checklogin(uid:String,pass:String)->Bool
    {
        if  let u = customerdetails[uid]
        {
            if u.pass == pass
            {
                c=true
            }
            else{
                c = false
            }
        }
        else
        {
            c=false
        }
      
       // c=verifylogin(uid: uid,pass: pass)
        return c!
    }
    
    func register(usid:String,cust:Customer)
    {
        
             customerdetails.updateValue(cust, forKey: usid)
        
        
        print(customerdetails)
     }
    
    
    
}
