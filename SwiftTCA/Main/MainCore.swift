//
//  MainCore.swift
//  SwiftTCA
//
//  Created by 이철구 on 2022/05/12.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import ComposableArchitecture

// MARK: - State
struct MainState: Equatable {
    
}

// MARK: - Action
enum MainAction: Equatable {

}

// MARK: - Environment
struct MainEnvironment {
    var mainQueue: AnySchedulerOf<DispatchQueue>
    static let live = Self (
        mainQueue: .main
    )
}

// MARK: - Reducer
let MainReducer = Reducer<MainState, MainAction, MainEnvironment> { state, action, environment in
    switch action {
        
    }
}
