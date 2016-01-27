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
    //let motionManager = CMMotionManager()
    override func viewDidLoad() {
//        super.viewDidLoad()
//        motionManager.accelerometerUpdateInterval=0.2
//        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue()!) { (accelerometerData: CMAccelerometerData?, NSError) -> Void in
//            
//                            self.outputAccData(accelerometerData!.acceleration)
//                        if(NSError != nil) {
//                                print("\(NSError)")
//                            }
//                  }
        motionkit.getAccelerometerValues(1.0){
            (x, y, z) in
            self.outputAccelerometerData(x, yval: y, zval: z)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: Actions
    
    //    @IBAction func accBttn(sender: UIButton) {
    //
    //        motionkit.getAccelerationAtCurrentInstant { (x, y, z) -> () in
    //            self.xAccelerometerValue.text=String(x)
    //            self.yAccelerometerValue.text=String(y)
    //            self.zAccelerometerValue.text=String(z)
    //        }
    //        //        self.xAccelerometerValue.text="YAhhhhh"
    //        //        self.yAccelerometerValue.text="Heyyyyyy"
    //        //        self.zAccelerometerValue.text="Looooool"
    //    }
    
    
    //testingggggg
    
//    @IBAction func accelerometerBttn(sender: UIButton) {
//        motionkit.getAccelerationAtCurrentInstant { (x, y, z) -> () in
//            self.xval=String(x)
//            self.yval=String(y)
//            self.zval=String(z)
//        }
////        self.xAccelerometerValue.text=self.xval
////        self.yAccelerometerValue.text=self.yval
////        self.zAccelerometerValue.text=self.zval
//        
//    }
    
    func outputAccData(accData: CMAcceleration){
        xAccelerometerValue?.text="\(accData.x)"
        yAccelerometerValue?.text="\(accData.y)"
        zAccelerometerValue?.text="\(accData.z)"
    }
    func outputAccelerometerData(xval: Double,yval: Double,zval: Double){
        dispatch_async(dispatch_get_main_queue(), {
            self.xAccelerometerValue?.text="\(xval)"
            self.yAccelerometerValue?.text="\(yval)"
            self.zAccelerometerValue?.text="\(zval)"
        })
        
        print("x:\(xval)")
        print("y:\(yval)")
        print("z:\(zval)")
    }
    
    
    
    
    
    
    
}

