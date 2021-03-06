//
//  ContentCore.swift
//  SwiftTCA
//
//  Created by 이철구 on 2022/05/11.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import ComposableArchitecture

// MARK: - State
//struct ContentState: Equatable {
//    let
//}

enum ContentState: Equatable {
    case login(LoginState)
    case main(MainState)
    public init() {
        self = .login(.init())
        self = .main(.init())
    }
}

// MARK: - Action
enum ContentAction: Equatable {
    case login(LoginAction)
    case main(MainAction)
}

// MARK: - Environment
struct ContentEnvironment {
    var mainQueue: AnySchedulerOf<DispatchQueue>
    
    static let live = Self (
        mainQueue: .main
    )
}

// MARK: - Reducer
let ContentReducer = Reducer<ContentState, ContentAction, ContentEnvironment>.combine(
    LoginReducer.pullback(
        state: /ContentState.login,
        action: /ContentAction.login,
        environment: {
            LoginEnvironment(mainQueue: $0.mainQueue)
        }
    ),
    MainReducer.pullback(
        state: /ContentState.main,
        action: /ContentAction.main,
        environment: {
            MainEnvironment(mainQueue: $0.mainQueue)
    }),
    Reducer { state, action, _  in
        switch action {
        case .login:
            return .none
        case .main:
            return .none
        }
    }
)
