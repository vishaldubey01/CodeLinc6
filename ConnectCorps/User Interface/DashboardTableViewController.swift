//
//  DashboardTableViewController.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/29/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import UIKit
import CoreLocation

class DashboardTableViewController: UITableViewController {
    static let identifier = "dashboardVC"
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return houses.count
        case 1:
            return events.count
        case 2:
            return contacts.count
        default:
            fatalError("Unknown section number")
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DashboardTableViewCell.reuseIdentifier, for: indexPath) as! DashboardTableViewCell
        switch indexPath.section {
        case 0:
            let house = houses[indexPath.row]
            cell.textLabel?.text = house.name
            cell.detailTextLabel?.text = "5.0 mi"
        case 1:
            let event = events[indexPath.row]
            cell.textLabel?.text = event.name
            cell.detailTextLabel?.text = "Saturday, August 23rd"
        case 2:
            let contact = contacts[indexPath.row]
            cell.textLabel?.text = contact.name
            cell.detailTextLabel?.text = contact.phoneNumber
        default:
            fatalError("Unknown section number")
        }
        return cell
    }
    
}
