//
//  TableCellViewModel.swift
//  WaiterApp
//
//  Created by Тони on 07.12.2024.
//

import Foundation

@Observable
class TableCellViewModel {
    var table: Table
    var numberDesciption: String { "Cтол \(table.number)" }
    var guestDescription: String { "Гостей: \(table.guest)" }
    var cashDescription: String { "Чек: \(table.cash) ₽" }
    var isFree: Bool {
        table.guest == 0 && table.cash == 0 ? true : false
    }
    
    init(table: Table) {
        self.table = table
    }
}
