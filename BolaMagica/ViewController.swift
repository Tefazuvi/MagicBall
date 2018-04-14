//
//  ViewController.swift
//  BolaMagica
//
//  Created by Stephanie Zuniga on 4/14/18.
//  Copyright © 2018 Stephanie Zuniga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MagicBall: UIImageView!
    var ball: Int = 0
    let arrBall = ["ball1","ball2","ball3","ball4","ball5","ball6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            RandomBall()
        }
    }
    
    func RandomBall()
    {
        if(ball == 4)
        {
            ball = 0
        }else{
            ball += 1
        }
        
        MagicBall.image = UIImage(named:arrBall[ball])
    }
    
}

