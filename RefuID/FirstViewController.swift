//
//  FirstViewController.swift
//  RefuID
//
//  Created by Drew Patel on 12/26/17.
//  Copyright © 2017 Drew Patel. All rights reserved.
//

import UIKit
import IrohaSwift

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let keypair = IrohaSwift.createKeyPair()
        print(keypair)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

