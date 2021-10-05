//
//  BMICalculatorBrain.swift
//  BMICalculator-UIKit
//
//  Created by Viktor Mauzer on 04.10.2021..
//

import Foundation

struct BMICalculatorBrain {
    
    var bmi = Float()
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = (weight / (height * height)) * 10000
    }
    
    func getBMIValue() -> Float {
        return bmi
    }
}
