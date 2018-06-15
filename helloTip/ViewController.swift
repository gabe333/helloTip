//
//  ViewController.swift
//  helloTip
//
//  Created by Gabriel Scrob on 2018-06-15.
//  Copyright © 2018 Gabriel Scrob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var textFIeld: UITextField!
    @IBOutlet weak var tipPercent: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tip: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        tipPercent.text = "\(sender.value)"
        
        if let totalTxt = totalAmount.text, let percentTxt = tipPercent.text{
            if let totalAmount = Float(totalTxt), let percent = Float(percentTxt){
                let totalBill = totalAmount * (percent / 100)
                tip.text = "\(totalBill)"
                let totalTip = totalAmount + totalBill
                total.text = "\(totalTip)"
            }
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if let buttonAmount = textFIeld.text {
            totalAmount.text = "\(buttonAmount)"
            textFieldShouldReturn(textField: textFIeld)
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.textFIeld.resignFirstResponder()
        return true
    }

}

