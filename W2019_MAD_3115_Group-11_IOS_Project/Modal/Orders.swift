//
//  Orders.swift
//  Group_8_MAD3115_W2019
//
//  Created by Kiran Mehal on 2019-03-22.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation
class Orders
{
    var orderid: Int!
    var dateCreated: String!
    var dateShipped: String!
    var customerName: String!
    var customerId: String!
    var status: String!
    var ShippingId:String!
    
    init(orderId: Int, dateCreated: String, dateShipped: String,customerName: String,customerId: String,status: String,ShippingId:String)
    {
       self.orderid=orderId
        self.dateCreated=dateCreated
        self.dateShipped=dateShipped
        self.customerName=customerName
        self.customerId=customerId
        self.status=status
        self.ShippingId=ShippingId
        
        
        
    }
    
}
