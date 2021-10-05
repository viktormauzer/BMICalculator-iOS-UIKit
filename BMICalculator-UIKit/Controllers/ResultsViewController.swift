//
//  ResultsViewController.swift
//  BMICalculator-UIKit
//
//  Created by Viktor Mauzer on 04.10.2021..
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet var bmiResultLabel: UILabel!
    
    var bmiValue: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let bmiString = bmiValue {
            bmiResultLabel.text = String(format: "%.1f", bmiString)
        }
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
