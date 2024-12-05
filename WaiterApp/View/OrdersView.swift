//
//  OrdersView.swift
//  WaiterApp
//
//  Created by Тони on 02.12.2024.
//

import SwiftUI

struct OrdersView: View {
    @State private var viewModel = LoginViewModel()
    
    var body: some View {
    if !viewModel.isAuth {
            LoginView(viewModel: viewModel)
        } else {
            ZStack {
                Image(.bg)
                    .scaleEffect(1.1)
                    .opacity(0.68)
            }
        }
    }
}

#Preview {
    OrdersView()
}
