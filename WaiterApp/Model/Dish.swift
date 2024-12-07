//
//  Dish.swift
//  WaiterApp
//
//  Created by Тони on 05.12.2024.
//

import Foundation


class Dish {
    let id: String = UUID().uuidString
    let title: String
    let price: Int
    let description: String
    var amount: Int = 0
    
    init(title: String, cost: Int, description: String, amount: Int) {
        self.title = title
        self.price = cost
        self.description = description
        self.amount = amount
    }
}

extension Dish {
    static var mockData: [Dish] {
        [
            .init(title: "Шашлык из свинины",
                  cost: 400,
                  description: "Шашлык подается с овощами и соусом на выбор",
                  amount: 0),
            .init(title: "Шаурма",
                  cost: 250,
                  description: "Шаурма из курицы в тонком лаваше собственного производства",
                  amount: 0),
            .init(title: "Пицца пепперони",
                  cost: 500,
                  description: "На тонком тесте пицца 35 см",
                  amount: 0),
            .init(title: "Салат Цезарь",
                  cost: 450,
                  description: "Фирменный салат где основной ингредиент предлагается на выбор",
                  amount: 0),
            .init(title: "Морс",
                  cost: 150, description: "Морс собственного производства из смородины",
                  amount: 0)
        ]
    }
}
