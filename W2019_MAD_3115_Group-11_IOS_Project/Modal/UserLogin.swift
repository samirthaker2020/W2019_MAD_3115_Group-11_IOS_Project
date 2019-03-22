//
//  UserLogin.swift
//  Group_8_MAD3115_W2019
//
//  Created by Jagmeet Kaur on 2019-03-21.
//  Copyright © 2019 Jagmeet Kaur. All rights reserved.
//

import Foundation
class UserLogin
{
    static let sharedInstance = UserLogin()
    var sid:String
    var users = Dictionary<String,UserLogin>()
    var pass:String
    var check:Bool?
    
    
    init() {
        self.sid=String()
        self.pass=String()
        
    }
    init(sid:String,pass:String) {
        self.sid=sid
        self.pass=pass
    }
    
    func reg(uid:String,s:UserLogin)
    {
        users.updateValue(s, forKey: uid)
    }
    func checklogin(uid:String,pass:String)->Bool   {
        
        
        
        if let u=users[uid]
        {
            
            if u.pass==pass
            {
                check = true
                
                
            }
            else
            {
                check = false
            }
        }
        else
        {
            check=false
        }
        return check!
}
    
}
