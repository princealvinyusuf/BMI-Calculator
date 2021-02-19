//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Prince Alvin Yusuf on 21/08/2021.
//  Copyright © 2021 Prince Alvin Yusuf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value)) M"
    }
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value)) Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height, weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.1f", calculatorBrain.getBMIValue())
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

