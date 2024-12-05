//
//  LoginView.swift
//  WaiterApp
//
//  Created by Тони on 02.12.2024.
//

import SwiftUI

struct LoginView: View {
    @Bindable var viewModel: LoginViewModel
    @State private var isShowAlert: Bool = false
    
    var body: some View {
        VStack {
            Image("logo")
                .frame(width: 150, height: (141))
            Text("Waiter App")
                .font(.custom("Montserrat-Regular", size: 32))
                .foregroundColor(.white)
            Divider()
                .frame(width: 270, height: 1, alignment: .center)
                .background(.white)
                .padding(.top, -8)
            Text(
"""
Интерактивный блокнот
официанта
"""
            )
            .customStyleTxtBtn()
            .padding(.top, -7)
            TextField("Введите номер сотрудника", text: $viewModel.user.number)
                .customStyleTF()
                .padding(.top, 40)
            if !viewModel.isAuth {
                SecureField("Введите пин-код", text: $viewModel.user.pin)
                    .customStyleTF()
            }
            
            Button {
                do {
                    try viewModel.checkAuth(number: viewModel.user.number,
                                                 pin: viewModel.user.pin)
                } catch {
                    if let error = error as? MyError {
                        viewModel.messageError = error.localizedDescription
                    }
                    isShowAlert = true
                }
            } label: {
                Text(viewModel.isAuth ? "Далее": "Войти")
                    .frame(maxWidth: .infinity, maxHeight: 44)
                    .background(Color.button)
                    .customStyleTxtBtn()
            }
        }
        
            .padding(.horizontal, 48)
            .offset(y: -160)
            .background {
            Image(.bg)
                .scaleEffect(1.1)
                .opacity(0.7)
        }
        .animation(.bouncy, value: viewModel.isAuth)
        
        .alert(viewModel.messageError, isPresented: $isShowAlert) {
            Button("OK") { }
        }
    }
}

struct TFStyleViewModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(12)
            .font(.custom("Montserrat-Regular", size: 16))
            .multilineTextAlignment(.center)
            .background(ignoresSafeAreaEdges: .all)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct TxtBtnStyleViewModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Montserrat-Regular", size: 16))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .multilineTextAlignment(.center)
    }
}

extension View {
    func customStyleTF() -> some View { modifier(TFStyleViewModifire()) }
}

extension View {
    func customStyleTxtBtn() -> some View { modifier(TxtBtnStyleViewModifire()) }
}

#Preview {
    LoginView(viewModel: LoginViewModel())
}
