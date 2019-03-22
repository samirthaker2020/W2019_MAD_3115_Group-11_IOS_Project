//
//  ProductDetailsViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-22.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
   
    
let glblData = Products.sharedproduct
    var a=[Products]()
    @IBOutlet weak var pcollection: UICollectionView!
    override func viewDidLoad() {
        self.pcollection.delegate=self
        self.pcollection.dataSource=self
        super.viewDidLoad()
getproducts()
        
        // Do any additional setup after loading the view.
    }
    
    func getproducts()
    {
        let product1 = Products(productid: "P001", productname: "Hard Drive", productprice: 120.00,pimage:"hdd.png")
        let product2 = Products(productid: "P002", productname: "Pen drive", productprice: 20.00,pimage:"pendrive.png")
        let product3 = Products(productid: "P003", productname: "Earpods", productprice: 50.00)
        let product4 = Products(productid: "P004", productname: "monitor", productprice: 300.00)
        let product5 = Products(productid: "P005", productname: "iphone", productprice: 1200.00)
        
         glblData.addproducts(pid: "P001", prod: product1)
        glblData.addproducts(pid: "P002", prod: product2)
        glblData.addproducts(pid: "P003", prod: product3)
        glblData.addproducts(pid: "P004", prod: product4)
        glblData.addproducts(pid: "P005", prod: product5)
        
        a.append(glblData.productdetails["P001"]!)
         a.append(glblData.productdetails["P002"]!)
         a.append(glblData.productdetails["P003"]!)
         a.append(glblData.productdetails["P004"]!)
         a.append(glblData.productdetails["P005"]!)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return glblData.productdetails.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pcell", for: indexPath) as! ProductDetailsCollectionViewCell
      let m=a[indexPath.row]
        cell.lblpid.text = m.productid
        // Configure the cell
        
        return cell
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
