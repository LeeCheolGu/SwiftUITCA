//
//  MainView.swift
//  SwiftTCA
//
//  Created by 이철구 on 2022/05/12.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

struct MainView: View {
    let store: Store<MainState, MainAction>
    
    var body: some View {
        WithViewStore(store) { viewStore in
            Text("Hello SNOW")
        }
    }
}

