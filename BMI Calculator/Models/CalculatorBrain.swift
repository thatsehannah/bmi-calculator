//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Elliot Hannah III on 2/15/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi ?? 0.0)
    }
    
    mutating func calculateBmiValue(height: Float, weight: Float){
        bmi = weight / pow(height, 2)
        
    }
    
}
