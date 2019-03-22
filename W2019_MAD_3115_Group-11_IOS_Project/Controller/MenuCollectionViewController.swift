//
//  MenuCollectionViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-21.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MenuCollectionViewController: UICollectionViewController {
    let p1=Products()
    
   
    var menuitem=["profile4.png","order.png","product.png","cart.png","help.png","contact.png","logout.png"]
    var menulabel=["My Profile","My Orders","Products","Cart Items","Need Help","Contact Us","Logout"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
self.collectionView.allowsSelection  = true;
        self.navigationItem.hidesBackButton=true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
getproducts()
       for (_,v) in p1.productdetails
        {
            
            print(v.productid)
            print(v.productname)
            print(v.productprice)
        }
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    
    
    
    func getproducts()
    {
        let product1 = Products(productid: "P001", productname: "Hard Drive", productprice: 120.00)
        let product2 = Products(productid: "P002", productname: "ZIP drive", productprice: 90.00)
        let product3 = Products(productid: "P003", productname: "Floppy disk", productprice: 50.00)
        let product4 = Products(productid: "P004", productname: "Monitor", productprice: 300.00)
        let product5 = Products(productid: "P005", productname: "iPhone 7 Plus", productprice: 1200.00)
      //  let totalProducts = [product1,product2,product3,product4,product5]
        
        p1.addproducts(pid: "P001", prod: product1)
        p1.addproducts(pid: "P002", prod: product2)
        p1.addproducts(pid: "P003", prod: product3)
        p1.addproducts(pid: "P004", prod: product4)
        p1.addproducts(pid: "P005", prod: product5)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.menuitem.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as! MenuCollectionViewCell
    cell.menuimg1.image = UIImage(named: menuitem[indexPath.row])
        cell.iconlabel.text=menulabel[indexPath.row]
        // Configure the cell
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (indexPath.item==0)
        {
            print("Profile")
        }
        else if (indexPath.item==1)
        {
            print("orders")
        }
        else if (indexPath.item==2)
        {
            print("products")
            
            let sb=UIStoryboard(name: "Main", bundle: nil)
           /* let homevc=sb.instantiateViewController(withIdentifier: "toproductpage") as! ProductViewController
        self.navigationController?.pushViewController(homevc, animated: true) */
        }
        else if (indexPath.item==3)
        {
            print("cart")
        }
        else if (indexPath.item==4)
        {
            print("need help")
        }
        else if (indexPath.item==5)
        {
            print("contact us")
        }
        else if (indexPath.item==6)
        {
            print("logout")
             let sb=UIStoryboard(name: "Main", bundle: nil)
        let lionvc=sb.instantiateViewController(withIdentifier: "splashscreen") as! ViewController
            self.present(lionvc,animated: true)
            
        }
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
