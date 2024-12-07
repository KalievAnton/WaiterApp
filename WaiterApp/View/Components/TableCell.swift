//
//  TableCell.swift
//  WaiterApp
//
//  Created by Тони on 05.12.2024.
//

import SwiftUI

struct TableCell: View {
//    @State var viewModel: TableCellViewModel
    
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Text("Стол 1")
                    .font(.custom("Montserrat-Bold", size: 16))
                    .foregroundColor(Color.black)
                   
                Text("Гостей: 1")
                    .font(.custom("Montserrat-Regular", size: 16))
                    .foregroundColor(Color.black)
                    .padding(12)
                    
                Text("Чек: 840 ₽")
                    .font(.custom("Montserrat-Regular", size: 16))
                    .foregroundColor(Color.black)
                    
            }
            
            .frame(width: 180, height: 180)
            .background(Color.table1)
            .clipShape(.rect(cornerRadius: 20))
        }
    }
}

#Preview {
    TableCell()
}
