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
    var table: [Table] = []
    
    init(user: User, table: [Table]) {
        self.user = user
        self.table = table
    }
}
