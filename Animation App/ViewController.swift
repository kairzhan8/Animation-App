//
//  ViewController.swift
//  Animation App
//
//  Created by Kairzhan Kural on 8/16/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var originCoordinate: CGFloat?
    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.x
        // Do any additional setup after loading the view.
    }

    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat], animations: {
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 40
            } else {
                self.coreAnimationView.frame.origin.x += 40
            }
            
        })
    }
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        springAnimationView.animation = "flash"
        springAnimationView.curve = "linear"
        
        springAnimationView.animate()
        
        sender.animation = "flash"
        sender.curve = "linear"
        sender.animate()
    }
    
}

