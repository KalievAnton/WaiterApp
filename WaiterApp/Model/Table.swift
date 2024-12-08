//
//  Table.swift
//  WaiterApp
//
//  Created by Тони on 05.12.2024.
//

import Foundation

class Table {
    let id: String = UUID().uuidString
    var number: Int = 0
    var guest: Int = 0
    var dishes: [Dish] = []
    var cash: Int {
        let cost = dishes.reduce(0) { $0 + $1.price * $1.amount }
        return cost
    }
    
   init(number: Int = 0, guest: Int = 0, dishes: [Dish] = []) {
        self.number = number
        self.guest = guest
        self.dishes = dishes
    }
}
