//
//  DashboardView.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/28/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI
import CoreLocation

struct DashboardView: View {
    
    let houseData: [House] = [
        House(id: 1, name: "address 1", phoneNumber: "407237833", location: CLLocation(latitude: 100, longitude: 100))
    ]
    let eventData: [Event] = [
        Event(id: 3, name: "asdf", location: CLLocation(latitude: 10, longitude: 10), cost: 3.0)
    ]
    let contactData: [Contact] = [
        Contact(name: "Sauren", description: "aslkdjfas", phoneNumber: "239408234")
    ]
    
    var body: some View {
        NavigationView {
            List {
                CategoryRow(houses: houseData, events: eventData)
                    //.listRowInsets(EdgeInsets())
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
