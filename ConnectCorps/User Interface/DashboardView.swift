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
    var body: some View {
        DashboardViewWrapper()
    }
}

struct DashboardViewWrapper: UIViewControllerRepresentable {
    typealias UIViewControllerType = DashboardTableViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<DashboardViewWrapper>) -> DashboardTableViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: DashboardTableViewController.identifier) as! DashboardTableViewController
        return vc
    }
    
    func updateUIViewController(_ uiViewController: DashboardTableViewController, context: UIViewControllerRepresentableContext<DashboardViewWrapper>) {
        
    }
    
}

/*
struct DashboardView: View {
    
    let houses: [House] = [
        House(id: 1, name: "address 1", phoneNumber: "407237833", location: CLLocation(latitude: 25.2048, longitude: 55.2708)),
        House(id: 1, name: "address 1", phoneNumber: "407237833", location: CLLocation(latitude: 25.2048, longitude: 55.2708)),
        House(id: 1, name: "address 1", phoneNumber: "407237833", location: CLLocation(latitude: 25.2048, longitude: 55.2708))
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
        VStack {
            List {
                Section {
                    VStack(alignment: .leading) {
                        Text("Harish Yerra").font(.title)
                        Text("Air Force").font(.body)
                    }.padding(5)
                }
                
            }.listStyle(GroupedListStyle())
            
            List(houses) { house in
                Section(header: Text("Houses").font(.headline)) {
                   NavigationLink(destination: HouseView(house: house).navigationBarTitle(house.name)) {
                        HouseRowItemView(house: house)
                    }
                }
            }.listStyle(GroupedListStyle())
            
            List(events) {
                Section(header: Text("Events").font(.headline)) {
                    ForEach(events) { event in
                        EventsRowItemView(event: event)
                    }
                }
            }.listStyle(GroupedListStyle())
            
            List(contacts) { contact in
                Section(header: Text("Contacts").font(.headline)) {
                    ContactRowItemView(contact: contact)
                }
            }.listStyle(GroupedListStyle())
            
            List([0, 1, 2]) { benefit in
                Section(header: Text("Benefits").font(.headline)) {
                    BenefitRowItemView()
                    BenefitRowItemView()
                    BenefitRowItemView()
                }
            }.listStyle(GroupedListStyle())
        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
*/
