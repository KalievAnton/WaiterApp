//
//  OrdersView.swift
//  WaiterApp
//
//  Created by Тони on 02.12.2024.
//

import SwiftUI

struct TableView: View {
    @Bindable var coordinator: Coordinator
    @State var viewModel: TableViewModel
    let layout: [GridItem] = [.init(), .init()]
    
    var body: some View {
        ZStack {
            Image(.bg)
                .scaleEffect(1.1)
            ScrollView {
                
            }
        }
    }
}

#Preview {
    TableView(coordinator: .init(), viewModel: .init(user: .init()))
}
