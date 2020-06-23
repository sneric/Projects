//
//  TheNameOfYourClass.swift
//  Organize Files
//
//  Created by ERIC SMITH on 6/19/20.
//  Copyright © 2020 ERIC SMITH. All rights reserved.
//

import Foundation

class car {

    var carModel = ""
    var carYear = 0
    var carPrice = 0

    init(car: String, year: Int, price: Int) {
        carModel = car
        carYear = year
        carPrice = price
    }

    func statement() {
        if carPrice < 10000 {
            print("Your \(carYear) \(carModel) is pretty affordable!")
        }

        else if (carPrice > 10000 && carPrice < 20000) {
            print("Your \(carYear) \(carModel) is a little pricey!")
        }

        else {
           print("Your \(carYear) \(carModel) is expensive!")
        }
    }
}

class annualInvestment {
    // Explain: based on your monthly salary, this class will calculate your tax rate, money left over, and money saved after 1 year based on the performnance of the market
    
    var monthlySalary = 0.0
    var taxRate = 0.0
    var marketPerformance = ""
    var marketReturn = 0.0
    var spending = 0.0
    var investmentPercent = 0.0
    
    init(salary: Double, moneySpent: Double, percentInvested: Double, marketReturnRate: String) {
        monthlySalary = salary
        marketPerformance = marketReturnRate
        spending = moneySpent
        investmentPercent = percentInvested
    }
    
    
    func revenueCalculator() {
        if monthlySalary < 2000.0 {
            taxRate = 0.10
        }
        
        else if (monthlySalary > 2000.0 && monthlySalary < 4000.0) {
            taxRate = 0.20
        }
        
        else {
            taxRate = 0.30
        }
        
        if marketPerformance == "Strong" {
            marketReturn = 1.10
        }

        else if marketPerformance == "Mild" {
            marketReturn == 1.05
        }

        else {
            marketReturn == 1.2
        }

//        if marketPerformance == "Weak" {
//            marketReturn == 1.01
//        }
//
        let grossIncome = 12 * monthlySalary
        let actualIncome = grossIncome - grossIncome * taxRate
        let incomeSpent = spending * 12
        let finalIncome = actualIncome - incomeSpent
        let investmentReturn = investmentPercent * finalIncome * marketReturn
        let moneyMade = finalIncome + investmentReturn
 
        print("Market Performance = \(marketPerformance).")
        print("You tax rate is \(taxRate).")
        print("Your annual income before spending is $\(actualIncome).")
        print("Your annual income after spending is $\(finalIncome).")
        print("You investment return is $\(round(investmentReturn)).")
        print("You spent $\(incomeSpent)")
        print("Based on your tax rate, spending, and market returns, you will have $\(moneyMade) by the end of the year.")

    }
    
}
