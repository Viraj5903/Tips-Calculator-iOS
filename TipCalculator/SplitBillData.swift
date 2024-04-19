//
//  SplitBillData.swift
//  TipCalculator
//
//  Created by Viraj Patel and Rohan Amlani on 2024-03-11.
//

import Foundation

struct Data {
    var amountPerPerson: Double
    var tip: Int
    var numberOfPeople: Int
    
    init(amountPerPerson: Double, tip: Int, numberOfPeople: Int) {
        self.amountPerPerson = amountPerPerson
        self.tip = tip
        self.numberOfPeople = numberOfPeople
    }}
