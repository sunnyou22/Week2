//
//  typealiasTest.swift
//  Week2
//
//  Created by 방선우 on 2022/07/16.
//

import Foundation

func sayMaximumWeight() -> Double {
    return 100
}

typealias Obesity = Double
func sayMaximumWeight(_ : Int) -> Obesity {
    return 200
}

typealias IntTuple = (Int, Int)

var a: IntTuple = (5, 10)
