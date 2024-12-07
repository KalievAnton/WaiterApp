//
//  LoginViewModel.swift
//  WaiterApp
//
//  Created by Тони on 02.12.2024.
//

import Observation
import SwiftUI

@Observable
final class AuthViewModel {
    var user = User()
    var messageError: MyError?
    private let numberSuccses = "1234"
    private let pinSuccses = "1234"
    var isAuth = true
    var showOrdersView = false
    
    func checkAuth(number: String, pin: String) throws {
        switch isAuth {
        case true:
            guard !number.isEmpty else { throw MyError.emptyField }
            guard number == numberSuccses else { throw MyError.invalidNumber }
            isAuth = false
        case false:
            guard !pin.isEmpty || !number.isEmpty else { throw MyError.emptyField }
            guard pin == pinSuccses else { throw MyError.invalidPin }
            guard number == numberSuccses else { throw MyError.invalidNumber }
            showOrdersView = true
        }
    }
    
    func logOut() {
        user.number = ""
        user.pin = ""
        
        withAnimation { showOrdersView.toggle() }
    }
}
