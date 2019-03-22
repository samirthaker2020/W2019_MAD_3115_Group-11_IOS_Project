//
//  ProductViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-21.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
let glblData = Products.sharedproduct
    @IBOutlet weak var tblproductdetails: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return glblData.productdetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sc=tableView.dequeueReusableCell(withIdentifier: "productcell") as! ProductDetailsTableViewCell
    let p1=Products()
        for (_,v) in p1.productdetails
        {
            print(v.productid)
            print(v.productname)
            print(v.productprice)
        }
        /*   let p1=Products()
        for (_,v) in p1.productdetails
        {
            print(v.productid)
            print(v.productname)
            print(v.productprice)
            sc.productid.text=v.productid
            sc.productname.text=v.productname
            sc.price.text=String(v.productprice)
            
        } */
        
        
        return sc
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
