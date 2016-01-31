//
//  ViewController.swift
//  SensorApp2
//
//  Created by Adewuyi, Oloruntobi on 27/01/2016.
//  Copyright © 2016 Adewuyi, Oloruntobi. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var xAccelerometerValue: UILabel?
    @IBOutlet weak var yAccelerometerValue: UILabel?
    @IBOutlet weak var zAccelerometerValue: UILabel?
    var xval : String = ""
    var yval : String = ""
    var zval : String = ""
    
    let motionkit = MotionKit()
    override func viewDidLoad() {
       super.viewDidLoad()

        motionkit.getAccelerometerValues(1.0){
            (x, y, z) in
            self.outputAccelerometerData(x, yval: y, zval: z)
        }
        
    }
    
    // MARK: Actions
    

    func outputAccelerometerData(xval: Double,yval: Double,zval: Double){
        dispatch_async(dispatch_get_main_queue(), {
            self.xAccelerometerValue?.text="\(xval)"
            self.yAccelerometerValue?.text="\(yval)"
            self.zAccelerometerValue?.text="\(zval)"
        })
        //print to console
        print("x:\(xval)")
        print("y:\(yval)")
        print("z:\(zval)")
    }
    
    
    
    
    
    
    
}

