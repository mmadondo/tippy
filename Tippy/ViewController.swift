//
//  ViewController.swift
//  Tippy
//
//  Created by Malvern Madondo on 6/20/17.
//  Copyright © 2017 Malvern Madondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        //print("Screen Tapped")
        view.endEditing(true)  //disbale editing when screen tapped
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0 //parse text to type double, change to nil
        let tip = bill * 0.2
        let total = bill + tip
        tipLabel.text = "$10.00"
        totalLabel.text = "$100.00"
    }
}

