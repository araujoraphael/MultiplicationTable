//
//  MultiplicationTable.swift
//
//  Created by Raphael Araújo on 2018-06-01.
//  Copyright © 2018 Raphael Araújo. All rights reserved.
//

import Foundation

var firstNumber = 1
var lastNumber = 12

func addSpacesToNumber(n: Int) -> String {
    if n < 10 {
        return "   \(n)  "
    }
    if n < 100 {
        return "  \(n)  "
    }
    return "  \(n) "
}

func separatorLine(size: Int) -> String{
    return String(repeating: "-", count: size)
} 

func formatHeader(header: String, separatorSize: Int) -> String {
    let separator = separatorLine(size: separatorSize)
    return "\(separator)\n\(header)\n\(separator)"
}

func printMultiplicationTable(startsWith: Int, endsWith: Int) {
    var header = "|   x  |"
    
    for number in (startsWith...endsWith) {
        var row = "|\(addSpacesToNumber(n: number))|"
        
        for by in (startsWith...endsWith) {
            if number == startsWith {
                let str = addSpacesToNumber(n: by)
                header += "\(str)|"
            }
            row += "\(addSpacesToNumber(n: number * by))|"
        }
        if number == startsWith {
            print(formatHeader(header: header, separatorSize: row.count))
        }
        
        print(row)
        print(separatorLine(size: row.count))
    }
}

print("\nMultiplication table: From  \(firstNumber) x \(firstNumber)  to  \(lastNumber) x \(lastNumber)\n")
printMultiplicationTable(startsWith: firstNumber, endsWith: lastNumber)



