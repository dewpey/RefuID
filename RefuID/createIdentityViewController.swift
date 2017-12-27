//
//  createIdentityViewController.swift
//  RefuID
//
//  Created by Drew Patel on 12/27/17.
//  Copyright © 2017 Drew Patel. All rights reserved.
//

import UIKit
import Eureka
import ImageRow

class createIdentityViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section("Biometrics")
            <<< LabelRow(){ row in
                row.title = "Fingerprint Signature:"
                row.disabled = true
        }
            <<< ImageRow("face") { row in
                row.title = "Facial Image"
                row.sourceTypes = [.Camera]
                row.clearAction = .yes(style: UIAlertActionStyle.destructive)
        }
        
        form +++ Section("Personal Information")
            <<< NameRow(){ row in
                row.title = "First Name"
            }
            <<< NameRow(){ row in
                row.title = "Middle Name"
            }
            <<< NameRow(){ row in
                row.title = "Last Name"
            }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
