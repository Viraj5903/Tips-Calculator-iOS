//
//  ViewController.swift
//  TipCalculator
//
//  Created by Viraj Patel and Rohan Amlani on 2024-03-11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextTotalBill: UITextField!
    @IBOutlet weak var TextTip: UILabel!
    @IBOutlet weak var TextNumberOfPeople: UILabel!
    @IBOutlet weak var TipSlider: UISlider!
    
    var data : Data!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func TipSliderEvent(_ sender: UISlider) {
        TextTip.text = String(Int(sender.value)) + "%"
    }
    
    @IBAction func SplitStepper(_ sender: UIStepper) {
        TextNumberOfPeople.text = "\(Int(sender.value))"
    }
    
    @IBAction func CalculateBill(_ sender: UIButton) {
        
        var bill: Double
        if let bil = Double(TextTotalBill.text!) {
            bill = bil
        } else {
            print("Invalid")
            bill = 0
        }
        
//        print(bill)
        
        let tipPercentage = Double(Int(TipSlider.value)) / 100
        print(tipPercentage)
        
        let numberOfPeople = Double(TextNumberOfPeople.text!) ?? 1
        
        let tipAmount = bill * tipPercentage
        let totalAmount = bill + tipAmount
        
//        print(totalAmount)
        
        let amountPerPerson = totalAmount / numberOfPeople
        
//        print(amountPerPerson)
        
        data = Data(amountPerPerson: amountPerPerson,  tip: Int(TipSlider.value), numberOfPeople: Int(numberOfPeople))
        
//        performSegue(withIdentifier: "goToDisplay", sender: self)
        // Add the Identifier to goToDisplay in Attribute Inspector of the Segue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? CalculateDisplayViewContoller, let tipData = data {
            destinationVC.tipData = tipData
        }
    }
}
