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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        determineDeviceOrientation()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        determineDeviceOrientation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    //MARK: - IBActions

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.1f", sender.value)) centimeters"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.1f", sender.value)) kilograms"
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

