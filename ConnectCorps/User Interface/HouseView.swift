//
//  HouseView.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/29/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI
import CoreLocation
import MapKit

struct HouseView: View {
    var house: House
    
    var body: some View {
        VStack {
            MapView(location: house.location.coordinate)
            HStack {
                Image("blah")
                VStack {
                    Text(house.name)
                    Text("My cool address")
                }
            }
            Spacer()
            Button(action: callHouseFacilitator) {
                Text("Call Facilitator")
            }
        }
    }
    
    func callHouseFacilitator() {
        UIApplication.shared.open(URL(string: "tel://\(house.phoneNumber)")!)
    }
}

struct HouseView_Previews: PreviewProvider {
    static var previews: some View {
        HouseView(house: House(id: 1, name: "blah", phoneNumber: "001283", location: CLLocation(latitude: 1, longitude: 1)))
    }
}
