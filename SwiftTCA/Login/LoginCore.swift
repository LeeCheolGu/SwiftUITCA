//
//  LoginCore.swift
//  SwiftTCA
//
//  Created by 이철구 on 2022/05/11.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import ComposableArchitecture

// MARK: - State
struct LoginState: Equatable {
    var alertText = ""
    var alertBodyText = "아이디 또는 비밀번호를 정확하게 입력해주세요."
}

// MARK: - Action
enum LoginAction: Equatable {
    case loginCheck(String, String)
}

// MARK: - Environment
struct LoginEnvironment {
    var mainQueue: AnySchedulerOf<DispatchQueue>
    public init(
        mainQueue: AnySchedulerOf<DispatchQueue>
    ) {
        self.mainQueue = mainQueue
    }
}

// MARK: - Reducer
let LoginReducer = Reducer<LoginState, LoginAction, LoginEnvironment> { state, action, environment in
    switch action {
    case let .loginCheck(id, pw):
        if id == "" && pw != "" {
            state.alertText = "아이디를 입력해주세요."
        } else if id != "" && pw == "" {
            state.alertText = "비밀번호를 입력해주세요."
        } else if id == "" && pw == "" {
            state.alertText = "아이디, 비밀번호를 입력해주세요."
        } else {
            state.alertText = "로그인 성공!"
            state.alertBodyText = "환영합니다."
        }
        return .none
    }
}
