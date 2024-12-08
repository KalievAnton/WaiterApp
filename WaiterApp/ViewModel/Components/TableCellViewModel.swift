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
    var guestDescription: String { "Гостей: \(table.guest) " }
    var cashDescription: String { "Чек: \(table.cash) ₽" }
    
    init(table: Table) {
        self.table = table
    }
}
