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
    
    init(user: User) {
        self.user = user
    }
}
