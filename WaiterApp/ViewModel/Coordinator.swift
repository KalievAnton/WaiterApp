//
//  Coordinator.swift
//  WaiterApp
//
//  Created by Тони on 07.12.2024.
//

import Foundation

@Observable
class Coordinator {
    let user = User()
    var appState: AppState = .unauthorized
}

