//
//  DishCellViewModel.swift
//  WaiterApp
//
//  Created by Тони on 12.12.2024.
//

import Foundation

@Observable
class DishCellViewModel {
    var dish: Dish
    var priceDescription: String { "\(dish.price) ₽" }
    var amountDescription: String { "\(dish.amount) шт" }
    var sumDishes: Int { dish.amount * dish.price }
    var sumDescription: String { "\(sumDishes) ₽" }
    
    init(dish: Dish) {
        self.dish = dish
    }
}
