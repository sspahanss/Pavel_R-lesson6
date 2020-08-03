//
//  main.swift
//  Pavel_R-lesson6
//
//  Created by Павел on 02.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import Foundation

class CarWash {
    var brand: String
    var cost: Int
    init(brand: String, cost: Int) {
        self.brand = brand
        self.cost = cost
    }
}

struct Queue<T> {
    private var elements: [T] = []
    mutating func enQueue(_ element: T) {
        elements.append(element)
    }
    mutating func deQueue() -> T? {
        return elements.removeFirst()
    }
    func printMyQueue() {
        print(elements)
    }
    
}

extension CarWash: CustomStringConvertible {
    var description : String {
        return "\(brand) стоимость мойки \(cost)"
    }
}
var carWash = Queue<CarWash>()




carWash.enQueue(CarWash(brand: "Lexus", cost: 1000))

carWash.enQueue(CarWash(brand: "kia", cost: 900))

carWash.printMyQueue()

carWash.deQueue()

// суть очереди я усвоил, а вот дальше каша

