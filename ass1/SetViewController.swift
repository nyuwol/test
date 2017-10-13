//
//  SetViewController.swift
//  ass1
//
//  Created by SWUCOMPUTER on 2017. 10. 13..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class SetViewController: UIViewController {

    var isOnOff : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back.png")!)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func clickSwitch(_ sender: UISwitch) {
        if sender.isOn {
            isOnOff = true
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back.png")!)
        } else {
            isOnOff = false
             self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! NameViewController
        destVC.isOnOff = isOnOff
    }


}
