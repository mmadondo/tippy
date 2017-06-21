//
//  ViewController.swift
//  Tippy
//
//  Created by Malvern Madondo on 6/20/17.
//  Copyright © 2017 Malvern Madondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //initialize
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var numPeopleSplit: UITextField!
    @IBOutlet weak var numPeopleLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.orange  //background color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        //print("Screen Tapped")
        view.endEditing(true)  //disbale editing when screen tapped
    }

    @IBAction func numPeople(_ sender: Any) {
      //  let numPeople = Int(
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.10, 0.2, 0.25]
        
        
        let bill = Double(billField.text!) ?? 0 //parse text to type double, change to nil
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip  //calculate total amount
        
        tipLabel.text = String(format: "$%.2f", tip) //set tip
        totalLabel.text = String(format: "$%.2f", total) //set total
    }
    
    @IBAction func btnSplitCost(_ sender: Any) {
         let tipPercentages = [0.10, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0 //parse text to type double, change to nil
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let totalAmnt = bill + tip  //calculate total amount
        
        let amntOwed = totalAmnt / Double(numPeopleSplit.text!)!
        
        numPeopleLabel.text = String(format: "$%.2f", amntOwed)
    }
    
}

