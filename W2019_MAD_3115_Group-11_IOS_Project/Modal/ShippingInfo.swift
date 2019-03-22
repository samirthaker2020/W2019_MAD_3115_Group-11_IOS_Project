//
//  ShippingInfo.swift
//  Group_8_MAD3115_W2019
//
//  Created by Kiran Mehal on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation
class ShippingInfo
{
    var shippingId: Int!
    var shippingType: String!
    var shippingRegionId: String!
    var shippingCost: Int!
    
    init(shippingId: Int,shippingType: String,shippingRegionId: String,shippingCost: Int)
    {
        self.shippingId=shippingId
        self.shippingType=shippingType
        self.shippingRegionId=shippingRegionId
        self.shippingCost=shippingCost
    }
    func updateshippingInfo()
    {
        
    }
    
}
