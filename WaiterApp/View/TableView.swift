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
            HStack {
                    Text("ИТОГО:")
                        .font(.custom("Montserrat-Bold", size: 24))
                        .foregroundStyle(.white)
                        .padding(.leading, 16)
                    Spacer()
                    Text("3300 ₽")
                        .font(.custom("Montserrat-Bold", size: 24))
                        .foregroundStyle(.white)
                        .padding(.trailing, 16)
            }
            ScrollView {
                LazyVGrid(columns: layout) {
                        TableCell(viewModel: .init(table: Table()))
                }
            }
        }
    }
}

#Preview {
    TableView(coordinator: .init(), viewModel: .init(user: .init(), table: .init()))
}
