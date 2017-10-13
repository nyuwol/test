//
//  NameViewController.swift
//  ass1
//
//  Created by SWUCOMPUTER on 2017. 10. 13..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class NameViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var className: UITextField!
    var name : String?
    var isOnOff : Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (isOnOff == true) {
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back.png")!)
        } else {
            self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        }

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
        name = textField.text
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! MonViewController
        destVC.name = name
        destVC.isOnOff = isOnOff
    }
}
