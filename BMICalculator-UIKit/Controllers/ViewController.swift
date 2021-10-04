//
//  ViewController.swift
//  BMICalculator-UIKit
//
//  Created by Viktor Mauzer on 04.10.2021..
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var logoImage: UIImageView!
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {

    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
    }
}

