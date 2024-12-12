//
//  OrdersView.swift
//  WaiterApp
//
//  Created by Тони on 02.12.2024.
//

import SwiftUI

struct TableView: View {
    @Binding var coordinator: Coordinator
    @State var viewModel: TableViewModel
    let layout: [GridItem] = [.init(), .init()]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(viewModel.table) { table in
                        TableCell(viewModel: .init(table: table))
                            .background(table.isTable ? Color.table1 : Color.table2)
                            .clipShape(.rect(cornerRadius: 20))
                    }
                }
            }
            HStack {
                Text("ИТОГО:")
                    .font(.custom("Montserrat-Bold", size: 24))
                    .foregroundStyle(.white)
                    .padding(.leading, 16)
                Spacer()
                Text(viewModel.totalDescription)
                    .font(.custom("Montserrat-Bold", size: 24))
                    .foregroundStyle(.white)
                    .padding(.trailing, 16)
            }
        }
        .background {
            Image(.bg)
                .resizable()
                .ignoresSafeArea()
                .scaleEffect()
        }
    }
}

#Preview {
    TableView(coordinator: .constant(.init()), viewModel: .init(user: .init()))
}
