//
//  TableViewModel.swift
//  WaiterApp
//
//  Created by Тони on 05.12.2024.
//

import Foundation

@Observable
class TableViewModel {
    var user: User
    var table: [Table] = [
        .init(number: 1, isTable: true,guest: 0, dishes: []),
        .init(number: 2, isTable: false, guest: 3, dishes: Dish.mockData),
        .init(number: 3, isTable: false, guest: 6, dishes: Dish.mockData),
        .init(number: 4, isTable: true, guest: 0, dishes: [])
    ]
    
    init(user: User) {
        self.user = user
    }
    
    var total: Int {
       table.reduce(0) { $0 + $1.cash }
    }
    
    var totalDescription: String { "\(total) ₽"}
}
