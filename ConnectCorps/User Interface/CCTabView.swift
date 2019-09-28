//
//  CCTabView.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/28/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI

struct CCTabView: View {
    var body: some View {
        TabView {
            VStack {
                Image(systemName: "rectangle.grid")
                Text("Dashboard")
            }
        }
    }
}

struct CCTabView_Previews: PreviewProvider {
    static var previews: some View {
        CCTabView()
    }
}
