//
//  ViewController.swift
//  ass1
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var className: UILabel!
    
    @IBOutlet var mm1 : UILabel!
    @IBOutlet var mm2: UILabel!
    @IBOutlet var mm3: UILabel!
    @IBOutlet var mm4: UILabel!
    @IBOutlet var mm5: UILabel!
    @IBOutlet var tt1: UILabel!
    @IBOutlet var tt2: UILabel!
    @IBOutlet var tt3: UILabel!
    @IBOutlet var tt4: UILabel!
    @IBOutlet var tt5: UILabel!
    @IBOutlet var ww1: UILabel!
    @IBOutlet var ww2: UILabel!
    @IBOutlet var ww3: UILabel!
    @IBOutlet var ww4: UILabel!
    @IBOutlet var ww5: UILabel!
    @IBOutlet var rr1: UILabel!
    @IBOutlet var rr2: UILabel!
    @IBOutlet var rr3: UILabel!
    @IBOutlet var rr4: UILabel!
    @IBOutlet var rr5: UILabel!
    @IBOutlet var ff1: UILabel!
    @IBOutlet var ff2: UILabel!
    @IBOutlet var ff3: UILabel!
    @IBOutlet var ff4: UILabel!
    @IBOutlet var ff5: UILabel!

    var name : String?
    var m1,m2,m3,m4,m5 : String?
    var t1,t2,t3,t4,t5 : String?
    var w1,w2,w3,w4,w5 : String?
    var r1,r2,r3,r4,r5 : String?
    var f1,f2,f3,f4,f5 : String?
    var isOnOff : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (isOnOff == true) {
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back.png")!)
        } else {
            self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        }

        if let contentString = m1 {
            mm1.text = contentString
            mm2.text = m2
            mm3.text = m3
            mm4.text = m4
            mm5.text = m5
            tt1.text = t1
            tt2.text = t2
            tt3.text = t3
            tt4.text = t4
            tt5.text = t5
            ww1.text = w1
            ww2.text = w2
            ww3.text = w3
            ww4.text = w4
            ww5.text = w5
            rr1.text = r1
            rr2.text = r2
            rr3.text = r3
            rr4.text = r4
            rr5.text = r5
            ff1.text = f1
            ff2.text = f2
            ff3.text = f3
            ff4.text = f4
            ff5.text = f5
            className.text = name
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as? NameViewController
        destVC?.isOnOff = isOnOff
    }
}

