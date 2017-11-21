//
//  CalculatorViewController.swift
//  IF26iostp02
//
//  Created by if26-grp1 on 21/11/2017.
//  Copyright © 2017 if26-grp1. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var pourboireLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sgementedControl: UISegmentedControl!
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateDisplay()
    }
    
    @IBAction func controlValuechanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            currencySign = "€"
        }else{
            currencySign = "$"
        }
        updateDisplay()
    }
    
    let tauxPourboire = 0.12
    var currencySign = "€"
    
    func updateDisplay() {
        let montantAddition = slider.value
        
        let montantPourboire = Double(montantAddition) * tauxPourboire
        
        pourboireLabel.text = String(Int(montantPourboire)) + " " + currencySign
        additionLabel.text = String(Int(montantAddition)) + " " + currencySign
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
        // Do any additional setup after loading the view.
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
