//
//  SignupViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-22.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    var cust=Customer()
    
    var ch:Bool?
    @IBOutlet weak var txtshipinfo: UITextField!
    @IBOutlet weak var txtccinfo: UITextField!
    @IBOutlet weak var txtaddress: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtpass: UITextField!
    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtuserid: UITextField!
    
    
    
    @IBAction func btnsubmit(_ sender: UIButton) {
        
        if(txtname.text != "" || txtpass.text != "" || txtemail.text != "" || txtccinfo.text != "" ||  txtaddress.text != "" )
        {
            let random=Int.random(in: 0...100)
     
let c1=Customer(custid: random,customerName:txtname.text!,address:txtaddress.text!,creditCardInfo: txtccinfo.text!,email:txtemail.text!,shipinfo:txtshipinfo.text!,uid:txtuserid.text!,pass:txtpass.text!)
           
    cust.register(usid: txtuserid.text!, cust: c1)

            let alert = UIAlertController(title:nil,message:"Registered Sucessfully",preferredStyle: .alert)
            let addaction=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(addaction)
            self.present(alert,animated: true,completion: nil)
            perform(#selector(movetologin), with: nil, afterDelay: 2)
        }
        else
        {
            let alert = UIAlertController(title:nil,message:"Invalid",preferredStyle: .alert)
            let addaction=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(addaction)
            self.present(alert,animated: true,completion: nil)
             self.txtname.text=""
            self.txtpass.text=""
        }
    }
    
    @objc func movetologin() {
        performSegue(withIdentifier: "movetologinpage", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
