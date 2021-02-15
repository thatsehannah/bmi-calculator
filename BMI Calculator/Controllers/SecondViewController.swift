//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Elliot Hannah III on 2/15/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

//Creating a view controller from scratch

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
