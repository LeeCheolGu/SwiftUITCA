//
//  LoginView.swift
//  SwiftTCA
//
//  Created by 이철구 on 2022/05/11.
//


import SwiftUI
import ComposableArchitecture

struct LoginView: View {
    let store: Store<LoginState, LoginAction>
    @State var id: String = ""
    @State var password: String = ""
    @State var idIsFocused: Bool = true
    @State var isAlert: Bool = false
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            VStack {
                VStack {
                    TextField("아이디를 입력해주세요." ,text: $id, onEditingChanged: { edit in
                        self.idIsFocused = true
                    })
                        .padding(.leading, 20)
                }
                .padding([.top, .trailing, .leading], 20)
                Divider()
                    .background(idIsFocused ? Color.red : Color.gray)
                    .padding(.horizontal, 40)
                VStack {
                    SecureField("비밀번호를 입력해주세요." ,text: $password)
                        .padding(.leading, 20)
                        .onTapGesture {
                            self.idIsFocused = false
                        }
                }
                .padding([.top, .trailing, .leading], 20)
                .onTapGesture {
                    self.idIsFocused = false
                }
                Divider()
                    .background(!idIsFocused ? Color.red : Color.gray)
                    .padding(.horizontal, 40)
                
                VStack {
                    Button {
                        isAlert.toggle()
                    } label: {
                        Text("로그인")
                            .foregroundColor(Color.black)
                    }
                    .frame(width: 300, height: 70)
                    .background(Color.white)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.black, lineWidth: 2)
                    )
                }
                .padding(.top, 20)
                .alert(isPresented: $isAlert) {
                    Alert(title: Text("Hello"), message: Text("환영합니다"))
                }
                
            }
        }
        
    }
}





//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}

