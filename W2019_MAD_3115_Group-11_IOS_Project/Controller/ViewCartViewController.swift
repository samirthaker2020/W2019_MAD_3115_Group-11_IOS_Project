//
//  ViewCartViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-23.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewCartViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   let gcart=ShoppingCart.sharedcart
    var cpid:String?
    var cname:String?
    var cprice:Float?
    var qty:Int?
    var addadate:Date?
    @IBOutlet weak var tbl1: UITableView!
   var sh=ShoppingCart()
    var item=[ShoppingCart]()
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
          item.append(sh)
        self.tbl1.delegate=self
        self.tbl1.dataSource=self
getdata()
        // Do any additional setup after loading the view.
    }
    

    func getdata() {
        for i in gcart.productList
        {
            item.append(i)
            print(i.productid!)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellremoveitem", for: indexPath) as! ViewCartTableViewCell
        let m = item[indexPath.row]
        cell.rname.text="ProductName:\(m.productname)"
        cell.rpid.text="ProductID:\(m.productid!)"
        cell.rpice.text="price:\(String(m.price))"
        cell.rqty.text = "Quantity:\(String(Extra.quantity))"
        cell.rtotal.text="Total:\(String(m.price * Float(Extra.quantity)))"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
}
