//
//  TableDetailViewModel.swift
//  WaiterApp
//
//  Created by Тони on 12.12.2024.
//

import Foundation

@Observable
class TableDetailViewModel {
    var dish = Dish.mockData
    var totalDishDescription: String { "\(total) ₽" }
    var total: Int {
        dish.reduce(0) { $0 + $1.amount * $1.price }
    }
    
    init(dish: [Dish] = Dish.mockData) {
        self.dish = dish
    }
}
