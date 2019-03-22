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
    var custid : Int!
    var customerName : String!
    var address : String!
    var creditCardInfo : Int!
    
    init(custid: Int,customerName: String,address: String,creditCardInfo: Int)
    {
        self.custid = custid
        self.customerName = customerName
        self.address = address
        self.creditCardInfo = creditCardInfo
    }
   
    
    
    
    
}
