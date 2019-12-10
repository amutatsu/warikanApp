//
//  ViewController.swift
//  warikanApp
//
//  Created by Tatsuya Amida on 2019/12/03.
//  Copyright © 2019 Tatsuya Amida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var taxPersentage = 0.0
    var totalBill = 0.0
    var numberOfPeople = 0
    var lastResult = 0.0
    var remainder = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func stepperPressed(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func taxButtonPressed(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroButton.isSelected = false
        eightButton.isSelected = false
        tenButton.isSelected = false
        sender.isSelected = true
        
        let taxButtonTitleWithoutPersent = sender.currentTitle!.dropLast()
        taxPersentage = Double(taxButtonTitleWithoutPersent)!
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        if let bill = billTextField.text {
            totalBill = Double(bill)!
            let result = (totalBill * (1 + taxPersentage/100))
            lastResult = result / Double(numberOfPeople)
            remainder = Int(result) - (Int(lastResult) * numberOfPeople)
            print(remainder)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.result = lastResult
        destinationVC.remainder = remainder
     }
}

