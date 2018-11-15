//
//  ViewController.swift
//  devierotation
//
//  Created by Integro on 18/04/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit
import CoreMotion
class ViewController: UIViewController {

    @IBOutlet weak var labelDegrees: UILabel!
    let manager = CMMotionManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        if manager.isDeviceMotionAvailable {
            manager.deviceMotionUpdateInterval = 0.01
            manager.startDeviceMotionUpdates(to: OperationQueue.current!, withHandler: { (deviceMotion, error) in
                let degrees: Float = Float((deviceMotion?.attitude.roll)! * 180) / Float(M_PI)
                let roundDegrees: Int = Int(degrees)
                self.labelDegrees.text = "\(roundDegrees)º"
                self.view.backgroundColor = UIColor(hue: 0.5, saturation: 1.0, brightness: CGFloat(abs((deviceMotion?.attitude.roll)!)), alpha: 1.0)
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

