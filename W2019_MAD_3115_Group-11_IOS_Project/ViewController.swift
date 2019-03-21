//
//  ViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project
//
//  Created by Owner on 2019-03-21.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        perform(#selector(splashscreen), with: nil, afterDelay: 3)
    }


    
    @objc func splashscreen()
    {
        performSegue(withIdentifier: "tologin", sender: self)
    }
}

