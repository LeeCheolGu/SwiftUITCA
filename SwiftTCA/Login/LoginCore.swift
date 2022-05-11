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
    
}

// MARK: - Action
enum LoginAction: Equatable {

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
        
    }
}
