//
//  MonViewController.swift
//  ass1
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MonViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var m1,m2,m3,m4,m5,name : String?
    var isOnOff : Bool?
    
    @IBOutlet var pic1: UIPickerView!
    @IBOutlet var pic2: UIPickerView!
    @IBOutlet var pic3: UIPickerView!
    @IBOutlet var pic4: UIPickerView!
    @IBOutlet var pic5: UIPickerView!
    
    let kind: Array<String> = ["영어", "수학", "과학", "국어", "체육"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (isOnOff == true) {
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back.png")!)
        } else {
            self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        }

        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return kind.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        m1 = kind[self.pic1.selectedRow(inComponent: 0)]
        m2 = kind[self.pic2.selectedRow(inComponent: 0)]
        m3 = kind[self.pic3.selectedRow(inComponent: 0)]
        m4 = kind[self.pic4.selectedRow(inComponent: 0)]
        m5 = kind[self.pic5.selectedRow(inComponent: 0)]
        return kind[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! TueViewController
        destVC.m1 = m1
        destVC.m2 = m2
        destVC.m3 = m3
        destVC.m4 = m4
        destVC.m5 = m5
        destVC.name = name
        destVC.isOnOff = isOnOff
    }
}
