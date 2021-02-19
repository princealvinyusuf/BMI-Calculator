//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Prince Alvin Yusuf on 19/02/21.
//  Copyright © 2021 Prince Alvin Yusuf. All rights reserved.
//

import UIKit

struct CalculatorBrain {
  
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0.0
        
    }
    
    func getAdvice() -> String {
        return bmi!.advice
    }
    
    func getColor() -> UIColor {
        return bmi!.color
    }
    
    
    
    
}
