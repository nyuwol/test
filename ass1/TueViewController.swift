//
//  TueViewController.swift
//  ass1
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class TueViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var name : String?
    var m1,m2,m3,m4,m5 : String?
    var t1,t2,t3,t4,t5 : String?
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
        t1 = kind[self.pic1.selectedRow(inComponent: 0)]
        t2 = kind[self.pic2.selectedRow(inComponent: 0)]
        t3 = kind[self.pic3.selectedRow(inComponent: 0)]
        t4 = kind[self.pic4.selectedRow(inComponent: 0)]
        t5 = kind[self.pic5.selectedRow(inComponent: 0)]
        return kind[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! WenViewController
        destVC.m1 = m1
        destVC.m2 = m2
        destVC.m3 = m3
        destVC.m4 = m4
        destVC.m5 = m5
        destVC.t1 = t1
        destVC.t2 = t2
        destVC.t3 = t3
        destVC.t4 = t4
        destVC.t5 = t5
        destVC.name = name
        destVC.isOnOff = isOnOff
    }
}
