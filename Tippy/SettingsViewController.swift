//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Malvern Madondo on 11/4/17.
//  Copyright © 2017 Malvern Madondo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipSegControl: UISegmentedControl!
    
    @IBOutlet weak var currencyControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let currency = defaults.integer(forKey: "currency-index")
        let tip = defaults.integer(forKey: "tip-index")
        
        currencyControl.selectedSegmentIndex = currency
        tipSegControl.selectedSegmentIndex = tip
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let defaultKey = UserDefaults.standard
        defaultKey.set(currencyControl.selectedSegmentIndex, forKey: "currency-index")
        
        let tipDefaultKey = UserDefaults.standard
    tipDefaultKey.set(tipSegControl.selectedSegmentIndex, forKey: "tip-index")
        
        defaultKey.synchronize()
        tipDefaultKey.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
