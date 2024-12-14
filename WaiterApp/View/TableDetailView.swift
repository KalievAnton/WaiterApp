//
//  TableDetailView.swift
//  WaiterApp
//
//  Created by Тони on 12.12.2024.
//

import SwiftUI

struct TableDetailView: View {
    @State var viewModel: TableDetailViewModel
    let layout: [GridItem] = [.init()]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(viewModel.dish) { dish in
                        DishCell(viewModel: .init(dish: dish))
                    }
                }
            }
            HStack {
                Text("ИТОГО:")
                    .font(.custom("Montserrat-Bold", size: 24))
                    .foregroundStyle(.white)
                    .padding(.leading, 16)
                Spacer()
                Text(viewModel.totalDishDescription)
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
    TableDetailView(viewModel: .init())
}
