//
//  OrderDetails.swift
//  Group_8_MAD3115_W2019
//
//  Created by Kiran Mehal on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation
class OrderDetails
{
    var orderId: Int!
    var productId: Int
    var productName: String!
    var quantity: Int!
    var total:Float!
    
    init(orderId: Int,productId: Int,productName: String,quantity: Int,total: Float)
    {
        self.orderId=orderId
        self.productId=productId
        self.productName=productName
        self.quantity=quantity
        self.total=total
        
    }
    
}
