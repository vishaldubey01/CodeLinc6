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
    
    let houses: [House] = [
        House(id: 1, name: "address 1", phoneNumber: "407237833", location: CLLocation(latitude: 100, longitude: 100)),
        House(id: 1, name: "address 1", phoneNumber: "407237833", location: CLLocation(latitude: 100, longitude: 100)),
        House(id: 1, name: "address 1", phoneNumber: "407237833", location: CLLocation(latitude: 100, longitude: 100))
    ]
    let events: [Event] = [
        Event(id: 3, name: "asdf", location: CLLocation(latitude: 10, longitude: 10), time: Date(), cost: 3.0),
        Event(id: 3, name: "asdf", location: CLLocation(latitude: 10, longitude: 10), time: Date(), cost: 3.0),
        Event(id: 3, name: "asdf", location: CLLocation(latitude: 10, longitude: 10), time: Date(), cost: 3.0)
    ]
    let contacts: [Contact] = [
        Contact(id: 1, name: "Sauren", description: "aslkdjfas", phoneNumber: "239408234"),
        Contact(id: 2, name: "Sauren", description: "aslkdjfas", phoneNumber: "239408234"),
        Contact(id: 3, name: "Sauren", description: "aslkdjfas", phoneNumber: "239408234")
    ]
    
    var body: some View {
        List {
            Section {
                VStack(alignment: .leading) {
                    Text("Harish Yerra").font(.title)
                    Text("Air Force").font(.body)
                }.padding(5)
            }
            Section(header: Text("Houses").font(.headline)) {
                ForEach(houses) { house in
                    HouseRowItemView(house: house)
                }
            }
            Section(header: Text("Events").font(.headline)) {
                ForEach(events) { event in
                    EventsRowItemView(event: event)
                }
            }
            Section(header: Text("Contacts").font(.headline)) {
                ForEach(contacts) { contact in
                    ContactRowItemView(contact: contact)
                }
            }
            Section(header: Text("Benefits").font(.headline)) {
                BenefitRowItemView()
                BenefitRowItemView()
                BenefitRowItemView()
            }
        }.listStyle(GroupedListStyle())
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
