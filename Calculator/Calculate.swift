//
//  Calculate.swift
//  Calculator
//
//  Created by Reddy,Raghavendra on 4/5/21.
//  Copyright © 2021 Reddy,Raghavendra. All rights reserved.
//

import Foundation

func appendValue(newValue: String, oldValue: String) -> String{
    if oldValue == "0" {
        return newValue
    }
    return oldValue + newValue
}

func doOperation(firstValue: String, secondValue: String, operation: String) -> String{
    let fvalue = Double(firstValue);
    let svalue = Double(secondValue);
    var result: Double = 0.0;
    var res: String = "";

    
    switch operation {
    case "/":
        if secondValue == "0"
        {
            res = "Error"
        }
        else{
        result = fvalue! / svalue! ;
        }

    case "+":
        result = fvalue! + svalue!;
    case "-":
        result = fvalue! - svalue!;
    case "X":
        result = fvalue! * svalue!;
    //    case "%": break
    default:
        result = svalue!;
    }
    
    
    if res == ""{
        res = String(result);
        if (result .truncatingRemainder(dividingBy: 1) == 0){
            let array = res.components(separatedBy: ".")
            res = array[0]
        }
        return res;
    }
    else{
        return res;
    }

}
