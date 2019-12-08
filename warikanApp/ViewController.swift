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
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func stepperPressed(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    @IBAction func taxButtonPressed(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroButton.isSelected = false
        eightButton.isSelected = false
        tenButton.isSelected = false
        sender.isSelected = true
        
    }
    
    
    
    
    
    
}

