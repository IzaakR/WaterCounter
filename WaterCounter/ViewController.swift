//
//  ViewController.swift
//  WaterCounter
//
//  Created by Rodriguez Isaac on 10/13/18.
//  Copyright © 2018 RodriguezIsaac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterView: CounterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeWater(_ sender: ActionButton) {
        if sender.isAddButton {
            if counterView.counter < 8 {
                counterView.counter += 1
            }
        } else {
            if counterView.counter > 1 {
                counterView.counter -= 1
            }
        }
    }
    
}

