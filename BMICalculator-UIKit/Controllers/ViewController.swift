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
    @IBOutlet var calculateButton: UIButton!
    
    var bmiCalculatorBrain = BMICalculatorBrain()
    var heightChanged = false
    var weightChanged = false
    
    //MARK: - Overrides
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        determineDeviceOrientation()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        determineDeviceOrientation()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ToResultVC") {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = bmiCalculatorBrain.getBMIValue()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: - IBActions

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        if heightChanged && weightChanged {
            bmiCalculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
            performSegue(withIdentifier: "ToResultVC", sender: self)
        } else {
            calculateButton.setTitle("Please specify height & weight", for: .normal)
        }
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.1f", sender.value)) centimeters"
        heightChanged = true
        calculateButton.setTitle("CALCULATE", for: .normal)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.1f", sender.value)) kilograms"
        weightChanged = true
        calculateButton.setTitle("CALCULATE", for: .normal)
    }
    
    
    //MARK: - Additional Functions
    
    func determineDeviceOrientation() {
        if UIDevice.current.orientation.isLandscape {
            logoImage.isHidden = true
        } else {
            logoImage.isHidden = false
        }
    }
}

