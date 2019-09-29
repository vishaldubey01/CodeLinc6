//
//  HouseRowItemView.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/28/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI
import CoreLocation

struct HouseRowItemView: View {
    var house: House
    
    var body: some View {
        HStack {
            Text(house.name)
            Spacer()
            Text("5.0 mi")
        }
    }
}

struct HouseRowItemView_Previews: PreviewProvider {
    static var previews: some View {
        HouseRowItemView(house: House(id: 1, name: "Cool", phoneNumber: "1231", location: CLLocation(latitude: 123.1, longitude: 12312.0)))
    }
}
