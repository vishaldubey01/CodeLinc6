//
//  HouseDetail.swift
//  ConnectCorps
//
//  Created by Vishal Dubey on 9/28/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI

struct HouseDetail: View {
    var house: House
    
    var body: some View {
        MapView(coordinate: house.location.coordinate)
            .frame(height: 300)
    }
}
