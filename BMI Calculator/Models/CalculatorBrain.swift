//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Elliot Hannah III on 2/15/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: Bmi?
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func getPicture() -> UIImage {
        return bmi?.picture ?? #imageLiteral(resourceName: "error")
    }
    
    mutating func calculateBmiValue(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = Bmi(value: bmiValue, advice: "It's okay, you can eat a little more.", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), picture: #imageLiteral(resourceName: "stickman"))
        } else if bmiValue < 24.9 {
            bmi = Bmi(value: bmiValue, advice: "Whoa! You're fit as can be.", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), picture: #imageLiteral(resourceName: "serena"))
        } else {
            bmi = Bmi(value: bmiValue, advice: "Alright buddy, time to go on a diet!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), picture: #imageLiteral(resourceName: "klump"))
        }
        
        
    }
    
}
