//
//  ResultViewController.swift
//  warikanApp
//
//  Created by Tatsuya Amida on 2019/12/09.
//  Copyright © 2019 Tatsuya Amida. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var remainderLabel: UILabel!
    
    var result = 0.0
    var remainder = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = String(format: "%.0f", result)
        if remainder > 0 {
            remainderLabel.text = "\(remainder) people have to pay \(Int(result) + 1)"
        } else {
            remainderLabel.text = ""
        }
        
    }

    
    @IBAction func recalculateButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
