//
//  LoginViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-21.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
     let userdefaults = UserDefaults.standard
    
    
    
    
    
    
    @IBOutlet weak var txtpass: UITextField!
    @IBOutlet weak var txtuid: UITextField!
    @IBOutlet weak var switchStatus: UISwitch!
    let u=UserLogin.sharedInstance
    let cust=Customer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let uid = userdefaults.string(forKey: "userid")
        {
            txtuid.text = uid
            switchStatus.isOn = true
        }
        if let vid = userdefaults.string(forKey: "pass")
        {
            txtpass.text = vid
            switchStatus.isOn = true
        }
         // self.navigationItem.hidesBackButton=true
        // Do any additional setup after loading the view.
        let user1=UserLogin(sid:"samir",pass:"thaker")
        u.reg(uid: "samir", s: user1)
        let user2=UserLogin(sid:"gurminder",pass:"kaur")
        u.reg(uid: "gurminder", s: user2)
        print(u.users)
    }
    

    @IBAction func btnlogin(_ sender: Any) {
        
        let c = u.verifylogin(uid: txtuid.text!, pass: txtpass.text!)
        
        if (c)
        {
            if switchStatus.isOn
            {
                userdefaults.set(txtuid.text,forKey:"userid")
                userdefaults.set(txtpass.text,forKey:"pass")
                
            }
            else
            {
                userdefaults.removeObject(forKey: "userid")
                userdefaults.removeObject(forKey: "pass")
                
            }
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let lionvc=sb.instantiateViewController(withIdentifier: "menu") as!  MenuCollectionViewController
            self.navigationController?.pushViewController(lionvc, animated: true)
            // self.present(lionvc, animated: true)
        }
        else
        {
            let alert = UIAlertController(title:nil,message:"Invalid",preferredStyle: .alert)
            let addaction=UIAlertAction(title: "Invalid", style: .default, handler: nil)
            alert.addAction(addaction)
            self.present(alert,animated: true,completion: nil)
            self.txtuid.text=""
            self.txtpass.text=""
        }
    }
    
    
    @IBAction func btnsignup(_ sender: UIButton) {
        
        let sb=UIStoryboard(name: "Main", bundle: nil)
        let lionvc=sb.instantiateViewController(withIdentifier: "regpage") as!   SignupViewController
        self.navigationController?.pushViewController(lionvc, animated: true)
        
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
