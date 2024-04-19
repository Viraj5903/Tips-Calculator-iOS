//
//  CalculateDisplayViewContoller.swift
//  TipCalculator
//
//  Created by Viraj Patel and Rohan Amlani on 2024-03-11.
//

import UIKit

class CalculateDisplayViewContoller: UIViewController {

    var tipData : Data!
    
    @IBOutlet weak var TipDetail: UILabel!
    @IBOutlet weak var TotalPrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        TotalPrice.text = String(round(tipData.amountPerPerson * 100) / 100)
        TipDetail.text = "Split between \(tipData.numberOfPeople) people with \(tipData.tip)% tip."
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
