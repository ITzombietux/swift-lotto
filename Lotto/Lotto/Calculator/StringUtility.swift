//
//  StringUtility.swift
//  Lotto
//
//  Created by 카카오VX on 2022/04/29.
//

import Foundation

struct StringUtiltity {
    static func convertStringArrayToIntArray(to stringArray: [String]) -> [Int] {
        stringArray.map { Int($0) ?? 0 }
    }
    
    static func convertSeparator(to inputExpression: String) -> String {
        inputExpression.replacingOccurrences(of: ":", with: ",")
    }
    
    static func splitExpression(to convertedExpression: String) -> [String] {
        convertedExpression.components(separatedBy: ",")
    }
}
