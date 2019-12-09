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
    
    var result = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = String(format: "%.0f", result)
    }

    
    @IBAction func recalculateButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
