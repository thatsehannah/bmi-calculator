//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Elliot Hannah III on 2/15/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    func updateUI() {
        bmiLabel.text = bmiValue
        
    }
    
    @IBAction func recalculateBmi(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
