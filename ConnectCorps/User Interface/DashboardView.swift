//
//  DashboardView.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/28/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            List {
                CategoryRow(houses: House, events: Event)
                    .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle("Main")
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
