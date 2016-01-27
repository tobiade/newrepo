//
//  ViewController.swift
//  SensorApp2
//
//  Created by Adewuyi, Oloruntobi on 27/01/2016.
//  Copyright © 2016 Adewuyi, Oloruntobi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var xAccelerometerValue: UILabel!
    @IBOutlet weak var yAccelerometerValue: UILabel!
    @IBOutlet weak var zAccelerometerValue: UILabel!
    
    let motionkit = MotionKit()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: Actions
    
    @IBAction func accBttn(sender: UIButton) {
        
        motionkit.getAccelerationAtCurrentInstant { (x, y, z) -> () in
            self.xAccelerometerValue.text=String(x)
            self.yAccelerometerValue.text=String(y)
            self.zAccelerometerValue.text=String(z)
        }
        //        self.xAccelerometerValue.text="YAhhhhh"
        //        self.yAccelerometerValue.text="Heyyyyyy"
        //        self.zAccelerometerValue.text="Looooool"
    }
    
    
    //testingggggg
    
    
    
    
    
    
    
    
}

