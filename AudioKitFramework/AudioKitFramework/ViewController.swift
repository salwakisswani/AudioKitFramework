//
//  ViewController.swift
//  AudioKitFramework
//
//  Created by Salwa Kisswani on 7/14/19.
//  Copyright © 2019 Salwa Kisswani. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    let oscillator = AKOscillator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        oscillator.amplitude = 0.1
        AudioKit.output = oscillator
       try! AudioKit.start()
        
        oscillator.start()
        
    }
    @IBAction func changeFreq(_ sender: UISlider) {
        oscillator.frequency = Double (sender.value * 880.0)
    }
    


}

