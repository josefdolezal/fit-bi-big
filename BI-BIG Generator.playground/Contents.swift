//: Playground - noun: a place where people can play

import Cocoa

let recordsCount = 5100

for iterator in 1...recordsCount {
    let month = arc4random_uniform(12) + 1
    let day = arc4random_uniform(28) + 1
    let orderId = arc4random_uniform(60000) + 1
    
    print(String(format: "\(iterator),2016-%02d-%02d,%d", month, day, orderId))
}
